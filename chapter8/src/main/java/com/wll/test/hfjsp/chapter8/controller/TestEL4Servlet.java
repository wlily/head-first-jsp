package com.wll.test.hfjsp.chapter8.controller;

import com.wll.test.hfjsp.chapter8.model.Dog;
import com.wll.test.hfjsp.chapter8.model.Person;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wll on 11/4/15.
 */
public class TestEL4Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<String> list = new ArrayList();
        list.add("true");
        list.add("false");
        list.add("2");
        list.add("10");

        req.setAttribute("num", "2");
        req.setAttribute("Integer", new Integer(3));
        req.setAttribute("list", list);

        RequestDispatcher dispatcher = req.getRequestDispatcher("elOperator.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
