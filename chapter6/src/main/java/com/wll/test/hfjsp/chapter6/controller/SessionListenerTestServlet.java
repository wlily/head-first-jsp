package com.wll.test.hfjsp.chapter6.controller;

import com.wll.test.hfjsp.chapter6.listener.Dog;
import com.wll.test.hfjsp.chapter6.listener.MyHttpSessionListener;

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
public class SessionListenerTestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        Dog dog = new Dog();
        dog.setBreed("test");
        HttpSession session = request.getSession();
        session.setAttribute("dog", dog);

        out.println("SessionListenerTestServlet set dog breed is: " +  dog.getBreed());
    }
}
