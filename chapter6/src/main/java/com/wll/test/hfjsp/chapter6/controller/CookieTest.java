package com.wll.test.hfjsp.chapter6.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wll on 11/1/15.
 */
public class CookieTest extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        String name = req.getParameter("userName");

        Cookie cookie = new Cookie("username", name);
        cookie.setMaxAge(30*60);//30分钟
        resp.addCookie(cookie);

        RequestDispatcher view = req.getRequestDispatcher("cookieresult.jsp");
        view.forward(req, resp);
    }
}
