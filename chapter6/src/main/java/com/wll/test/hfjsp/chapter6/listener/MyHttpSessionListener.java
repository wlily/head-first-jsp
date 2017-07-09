package com.wll.test.hfjsp.chapter6.listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Created by wll on 11/1/15.
 */
public class MyHttpSessionListener implements HttpSessionListener {
    private static int activeSessions = 0;

    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        activeSessions++;
    }

    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        activeSessions--;
    }

    //上下文属性和回话属性都步是线程安全的
    //请求属性是线程安全的
    //servlet实例变量不是线程安全的
}
