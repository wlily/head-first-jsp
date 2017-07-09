package com.wll.test.hfjsp.chapter13;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by wll on 11/30/15.
 */
public class BeerRequestFilter implements Filter {
    private FilterConfig fc;

    public void init(FilterConfig filterConfig) throws ServletException {
        this.fc = filterConfig;
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest httpReq = (HttpServletRequest)servletRequest;
        String name = httpReq.getRemoteUser();
        if(name != null){
            fc.getServletContext().log("User " + name + " is updating");
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    public void destroy() {

    }
}
