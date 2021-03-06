package com.wll.test.hfjsp.chapter9.controller;

import com.wll.test.hfjsp.chapter9.model.Person;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by wll on 11/19/15.
 */
public class TestSetServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("Fido", "hello");
        req.setAttribute("userLevel", "test");

        Map map = new HashMap();
        map.put("dogName", "dudu");
        req.setAttribute("petMap", map);

        Person p = new Person();
        req.setAttribute("person", p);

        RequestDispatcher view = req.getRequestDispatcher("testSet.jsp");
        view.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}