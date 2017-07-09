package com.wll.test.hfjsp.chapter8.controller;

import com.wll.test.hfjsp.chapter8.model.Person;
import oracle.jrockit.jfr.events.RequestableEventEnvironment;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wll on 11/18/15.
 */
public class TestJspBean1Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Person p = new Person();
        p.setName("Evan");
        req.setAttribute("person", p);

        RequestDispatcher view = req.getRequestDispatcher("testJspBean1.jsp");
        view.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
