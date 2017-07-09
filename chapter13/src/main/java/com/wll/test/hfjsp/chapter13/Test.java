package com.wll.test.hfjsp.chapter13;

import java.lang.reflect.Method;

/**
 * Created by wll on 12/1/15.
 */
public class Test {

    public Test(){}

    public void test1(){
        System.out.println("test1");
    }

    private void test2(){
        System.out.println("test2");
    }

    public String test3(String aa){
        System.out.println("test3 " + aa);
        return "test3";
    }

    private String test4(String aa){
        System.out.println("test4 " + aa);
        return "test4";
    }


}
