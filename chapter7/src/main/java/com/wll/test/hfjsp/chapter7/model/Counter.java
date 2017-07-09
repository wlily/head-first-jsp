package com.wll.test.hfjsp.chapter7.model;

/**
 * Created by wll on 11/2/15.
 */
public class Counter {
    private static int count = 0;

    public synchronized  static int getCount(){
        count++;
        return count;
    }
}
