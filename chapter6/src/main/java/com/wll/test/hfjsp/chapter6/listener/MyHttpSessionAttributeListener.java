package com.wll.test.hfjsp.chapter6.listener;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Created by wll on 11/15/15.
 */
public class MyHttpSessionAttributeListener implements HttpSessionAttributeListener{

    public void attributeAdded(HttpSessionBindingEvent httpSessionBindingEvent) {
        String name = httpSessionBindingEvent.getName();
        Object value = httpSessionBindingEvent.getValue();

        System.out.println("Attribute added: " + name + ";" + value);
    }

    public void attributeRemoved(HttpSessionBindingEvent httpSessionBindingEvent) {
        String name = httpSessionBindingEvent.getName();
        Object value = httpSessionBindingEvent.getValue();

        System.out.println("Attribute removed: " + name + ";" + value);
    }

    public void attributeReplaced(HttpSessionBindingEvent httpSessionBindingEvent) {
        String name = httpSessionBindingEvent.getName();
        Object value = httpSessionBindingEvent.getValue();

        System.out.println("Attribute replaced: " + name + ";" + value);
    }
}
