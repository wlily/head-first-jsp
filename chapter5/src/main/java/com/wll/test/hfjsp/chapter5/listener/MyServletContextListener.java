package com.wll.test.hfjsp.chapter5.listener;

import com.wll.test.hfjsp.chapter5.model.Dog;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Created by wll on 11/1/15.
 */
public class MyServletContextListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ServletContext servletContext = servletContextEvent.getServletContext();
        String dogBreed = servletContext.getInitParameter("breed");
        Dog d = new Dog(dogBreed);

        synchronized (servletContext){
            servletContext.setAttribute("dog", d);
        }

    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }

    //上下文属性和回话属性都步是线程安全的
    //请求属性是线程安全的
    //servlet实例变量不是线程安全的
}
