package com.wll.test.hfjsp.chapter5.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wll on 11/1/15.
 */
public class PrintAddress extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        response.getWriter().println("blooper@wickedlysmart.com");
        response.getWriter().println("<br>" + getServletContext().getInitParameter("dbName"));
        response.getWriter().println("<br>" + getServletConfig().getInitParameter("myEmail"));
    }
}
