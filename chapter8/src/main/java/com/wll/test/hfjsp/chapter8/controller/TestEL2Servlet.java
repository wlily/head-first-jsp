package com.wll.test.hfjsp.chapter8.controller;

import com.wll.test.hfjsp.chapter8.model.Dog;
import com.wll.test.hfjsp.chapter8.model.Person;
import sun.plugin.dom.html.HTMLParagraphElement;

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
public class TestEL2Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Person person = new Person();
        person.setName("Evan");

        Dog dog = new Dog();
        dog.setName("spike");
        person.setDog(dog);
        req.setAttribute("person", person);

        Map musicMap = new HashMap();
        musicMap.put("Ambient", "Zero 7");
        musicMap.put("Surf", "Tahiti 80");
        musicMap.put("DJ", "BT");
        musicMap.put("Indie", "Travis");
        req.setAttribute("musicMap", musicMap);

        List<String> foods = new ArrayList();
        foods.add("chai ice cream");
        foods.add("fajitas");
        foods.add("thai pizza");
        foods.add("anything in dard chocolate");
        req.setAttribute("foods", foods);

        String[] types = new String[]{"Ambient", "Surf", "DJ", "Indie"};
        req.setAttribute("musicTypes", types);

        String[] musics = new String[]{"Zero 7", "Tahiti 80", "BT", "Frou Frou"};
        req.setAttribute("musics", musics);


        req.setAttribute("Genre", "Ambient");
        req.setAttribute("currentTip", "<b></b> makes things bold!");


        RequestDispatcher dispatcher = req.getRequestDispatcher("elAcessOperators.jsp");
        dispatcher.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
