package com.wll.test.hfjsp.chapter5.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wll on 11/1/15.
 */
public class RequestDispatchServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String testcase = req.getParameter("case");

        if(testcase.equals("case1")){
            req.setAttribute("name", "wll");
            RequestDispatcher dispatcher = req.getRequestDispatcher("/hello.jsp");
            dispatcher.forward(req, resp);
        }
        else if(testcase.equals("case2")){
            req.setAttribute("name", "wll2");
            RequestDispatcher dispatcher = req.getRequestDispatcher("test/hello.jsp");
            dispatcher.forward(req, resp);
        }
        else if(testcase.equals("case3")){
            req.setAttribute("name", "wll3");
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/test/hello.jsp");
            dispatcher.forward(req, resp);
        }

    }
}
