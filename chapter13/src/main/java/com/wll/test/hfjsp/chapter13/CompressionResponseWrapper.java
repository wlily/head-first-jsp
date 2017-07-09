package com.wll.test.hfjsp.chapter13;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.util.zip.GZIPOutputStream;

/**
 * This response wrapper decorates the original response object by add a
 * compression decorator on the original servlet output stream.
 */
public class CompressionResponseWrapper extends HttpServletResponseWrapper {
    /**
     * the compressed output stream for the servlet response
     */
    private GZIPServletOutputStream servletGzipOS = null;

    /**
     * the PrintWriter object to the compressed output stream
     */
    private PrintWriter pw = null;

    /**
     * The constructor performs the Decorator responsibility of storing
     * a reference to the object being decorated, in this case the HTTP
     * response object.
     */
    public CompressionResponseWrapper(HttpServletResponse resp) {
        super(resp);
    }

    /**
     * This state variable holds the first stream object created.
     */
    private Object streamUsed = null;

    /**
     * Provide access to a decorated servlet output stream.
     */
    public ServletOutputStream getOutputStream() throws IOException {
        // Allow the servlet to access a servlet output stream (SOS)
        // only if the servlet has not already accessed the print writer.
        if ((streamUsed != null) && (streamUsed != servletGzipOS)) {
            throw new IllegalStateException();
        }
        // Wrap the original servlet output stream with our compression SOS.
        // We'll look at this class in a minute.
        if (servletGzipOS == null) {
            servletGzipOS = new GZIPServletOutputStream(getResponse().getOutputStream());
            streamUsed = servletGzipOS;
        }
        return servletGzipOS;
    }

    /**
     * Provide access to a decorated print writer.
     */
    public PrintWriter getWriter() throws IOException {
        // Allow the servlet to access a print writer only if the
        // servlet has not already accessed the servlet output stream.
        if ((streamUsed != null) && (streamUsed != pw)) {
            throw new IllegalStateException();
        }
        // To make a print writer, we have to first wrap the servlet output stream
        // and then wrap the compression SOS in two additional OS decorators:
        // OutputStreamWriter which converts characters into bytes, and then a
        // PrintWriter on top of the OSWriter object.
        if (pw == null) {
            servletGzipOS = new GZIPServletOutputStream(getResponse().getOutputStream());
            // Use the response charset to create the OSWriter
            OutputStreamWriter osw  = new OutputStreamWriter(servletGzipOS, getResponse().getCharacterEncoding());
            // Wrap the OSWriter in the PrintWriter
            pw = new PrintWriter(osw);
            streamUsed = pw;
        }
        return pw;
    }

    /**
     * Ignore this method, because the real output will be compressed.
     */
    public void setContentLength(int len) {
    }

    //
    // Decorator methods (used by the Filter)
    //

    /**
     * This gives the compression filter a handle on the GZIP output stream
     * so that it (the filter) can "finish" and flush the GZIP stream.
     */
    public GZIPOutputStream getGZIPOutputStream() {
        return this.servletGzipOS.internalGzipOS;
    }
}

