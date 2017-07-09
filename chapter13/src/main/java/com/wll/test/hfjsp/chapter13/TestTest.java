package com.wll.test.hfjsp.chapter13;

import java.lang.reflect.Method;

/**
 * Created by wll on 12/1/15.
 */
public class TestTest {
    public static void main(String[] arg){
        Test test = new Test();
        Method[] methods = test.getClass().getDeclaredMethods();

        try {
            Method m1 = test.getClass().getDeclaredMethod("test1");
            m1.setAccessible(true);
            m1.invoke(test, null);

            Method m2 = test.getClass().getDeclaredMethod("test2");
            m2.setAccessible(true);
            m2.invoke(test, null);


            Method m3 = test.getClass().getDeclaredMethod("test3", String.class);
            m3.setAccessible(true);
            m3.invoke(test, "ttt");

            Method m4 = test.getClass().getDeclaredMethod("test4", String.class);
            m4.setAccessible(true);
            m4.invoke(test, "ttt");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
