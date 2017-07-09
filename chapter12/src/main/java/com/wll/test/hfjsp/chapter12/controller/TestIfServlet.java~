package com.wll.test.hfjsp.chapter9.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wll on 11/19/15.
 */
public class TestIfServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List comments = new ArrayList();
        comments.add("This site is cool!");
        comments.add("This site is stupid!");
        comments.add("This site is good!");
        req.setAttribute("commentList", comments);

        RequestDispatcher view = req.getRequestDispatcher("testIf.jsp");
        view.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}