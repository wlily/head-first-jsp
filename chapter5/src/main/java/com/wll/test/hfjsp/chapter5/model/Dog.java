package com.wll.test.hfjsp.chapter5.model;

import java.io.Serializable;

/**
 * Created by wll on 11/1/15.
 */
public class Dog implements Serializable{
    private String breed;

    public Dog(String breed) {
        this.breed = breed;
    }

    public String getBreed() {
        return breed;
    }
}
