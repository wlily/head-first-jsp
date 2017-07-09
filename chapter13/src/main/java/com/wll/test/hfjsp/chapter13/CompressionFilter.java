package com.wll.test.hfjsp.chapter13;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.zip.GZIPOutputStream;

/**
 * This filter provides a mechanism to compress the response body content.
 * This type of filter would common be applied to any text content, such as
 * HTML, but not to most media formats, such as PNG or MPEG, because these
 * are already compressed.
 */
public class CompressionFilter implements Filter {

  private ServletContext ctx;
  private FilterConfig cfg;

    /**
     * The init method saves the config object and a quick reference to the
     * servlet context object (for logging purposes).
     */
  public void init(FilterConfig cfg) 
	 throws ServletException {
    this.cfg = cfg;
    ctx = cfg.getServletContext();
    ctx.log(cfg.getFilterName() + " initialized.");
  }

    /**
     * The heart of this filter wraps the response object with a Decorator
     * that wraps the output stream with a compression I/O stream.
     * Compression of the output stream is only performed if and only if
     * the client includes an Accept-Encoding header (specifically, for gzip).
     */
  public void doFilter(ServletRequest req,  ServletResponse resp,  FilterChain fc) throws IOException, ServletException {
    HttpServletRequest request = (HttpServletRequest) req;
    HttpServletResponse response = (HttpServletResponse) resp;

    // Dose the client accept GZIP compression?
    String valid_encodings = request.getHeader("Accept-Encoding");

    if ( (valid_encodings != null) && (valid_encodings.indexOf("gzip") > -1) ) {
      CompressionResponseWrapper wrappedResp = new CompressionResponseWrapper(response);

      // Declare that the response content is being GZIP encoded.
      wrappedResp.setHeader("Content-Encoding", "gzip");

      // Chain to the next component (thus processing the request)
      fc.doFilter(request, wrappedResp);

      // A GZIP compression stream must be "finished"
      // which also flushes the GZIP stream buffer
      // which sends all of it's data to the original response stream.
      GZIPOutputStream gzos = wrappedResp.getGZIPOutputStream();
      gzos.finish();

      // The container handles the rest of the work.
      ctx.log(cfg.getFilterName() + ": finished the request.");
    } else {
      fc.doFilter(request, response);
      ctx.log(cfg.getFilterName() + ": no encoding performed.");
    }
  }

  public void destroy() {
      cfg = null;
      ctx = null;
  }
}
