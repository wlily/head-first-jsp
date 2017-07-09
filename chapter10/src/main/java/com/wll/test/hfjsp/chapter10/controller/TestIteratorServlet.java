package com.wll.test.hfjsp.chapter10.controller;

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
public class TestIteratorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] movieList = {"Amelie", "Return of the King", "Mean Girls"};
        req.setAttribute("movieList", movieList);

        String[] movies1 = {"Matrix Revolutions", "Kill Bill", "Boondock Saints"};
        String[] movies2 = {"Amelie", "Return of the King", "Mean Girls"};
        List movieList2 = new ArrayList();
        movieList2.add(movies1);
        movieList2.add(movies2);
        req.setAttribute("movies", movieList);

        RequestDispatcher view = req.getRequestDispatcher("testForEach.jsp");
        view.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
