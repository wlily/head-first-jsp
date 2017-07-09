package com.wll.test.hfjsp.chapter6.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by wll on 11/1/15.
 */
public class SessionByCookieServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        out.println("test session attributes<br>");

        HttpSession session = req.getSession();
        if(session.isNew()){
            out.println("This is a new session");
        }
        else{
            out.println("welcome back!");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        out.println("test session attributes<br>");

        HttpSession session = req.getSession(false);
        if(session == null){
            out.println("<br>no session was available");
            out.println("<br>making one...");
            session = req.getSession();
        }
        else{
            out.println("there was a session!");
        }
    }
}
