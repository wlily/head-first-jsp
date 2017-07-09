package com.wll.test.hfjsp.chapter1;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

/**
 * Created by wll on 10/29/15.
 */
public class GetTodayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        Date today = new Date();
        out.println("<html> " +
                "<body>" +
                        "<h1 align=center>HF\'s Chapter1 Servlet</h1>" +
                        "<br>" + today + "</body>" + "</html>");
    }
}
