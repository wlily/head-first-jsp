package com.wll.test.hfjsp.chapter4.controller;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * Created by wll on 11/1/15.
 */
public class Download extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/jar");
        response.setHeader("Content-Disposition", "attachment;filename=test2.jar");

        ServletContext ctx = getServletContext();
        InputStream is = ctx.getResourceAsStream("/resource.jar");

        int read = 0;
        byte[] bytes = new byte[1024];

        OutputStream os = response.getOutputStream();
        while((read = is.read(bytes)) != -1){
            os.write(bytes, 0, read);
        }
        os.flush();
        os.close();
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
