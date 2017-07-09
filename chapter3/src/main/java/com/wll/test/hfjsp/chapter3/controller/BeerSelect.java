package com.wll.test.hfjsp.chapter3.controller;

import com.wll.test.hfjsp.chapter3.model.BeerExpert;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by wll on 10/29/15.
 */
public class BeerSelect extends HttpServlet {

//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setContentType("text/html");
//        PrintWriter out = resp.getWriter();
//        out.print("Beer Selection Advice<br>");
//        String c = req.getParameter("color");
//        out.println("<br>Got beer color " + c);
//    }


//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String c = req.getParameter("color");
//        List<String> result = new BeerExpert().getBrands(c);
//
//        resp.setContentType("text/html");
//        PrintWriter out = resp.getWriter();
//        out.print("Beer Selection Advice<br>");
//        for(String one : result){
//            out.println("<br>try: " + one);
//        }
//    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String c = req.getParameter("color");
        List<String> result = new BeerExpert().getBrands(c);

        req.setAttribute("styles", result);
        //为JSP实例化一个请求分派器
        RequestDispatcher view = req.getRequestDispatcher("result.jsp");
        //使用请求分派器要求容器准备好JSP, 并向JSP发送请求和响应
        view.forward(req, resp);

    }
}
