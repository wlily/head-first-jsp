package com.wll.test.hfjsp.chapter6.listener;

import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionEvent;
import java.io.Serializable;

/**
 * Created by wll on 11/15/15.
 */
public class Dog implements Serializable, HttpSessionBindingListener, HttpSessionActivationListener {
    private String breed;

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public String getBreed() {
        return breed;
    }

    public void sessionWillPassivate(HttpSessionEvent httpSessionEvent) {

    }

    public void sessionDidActivate(HttpSessionEvent httpSessionEvent) {

    }

    public void valueBound(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("dog is bound to session: " + httpSessionBindingEvent.getSession().getId());

    }

    public void valueUnbound(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("dog is unbound from session: " + httpSessionBindingEvent.getSession().getId());
    }
}