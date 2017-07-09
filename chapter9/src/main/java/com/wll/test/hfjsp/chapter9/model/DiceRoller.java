package com.wll.test.hfjsp.chapter9.model;

/**
 * Created by wll on 11/5/15.
 */
public class DiceRoller {

    public static int rollDice(){
        return (int) ((Math.random() * 6) + 1);
    }
}
