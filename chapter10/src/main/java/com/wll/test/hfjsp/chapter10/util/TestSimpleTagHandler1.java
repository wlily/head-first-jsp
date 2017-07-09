package com.wll.test.hfjsp.chapter10.util;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * Created by wll on 11/21/15.
 */
public class TestSimpleTagHandler1 extends SimpleTagSupport {
    private String user;
    private String dept;

    private String[] movies = new String[]{
        "hahaha", "gagagag", "wawawa"
    };

    //The Container calls doTag() when the JSP invokes the tag using the name declared in the TLD.
    @Override
    public void doTag() throws JspException, IOException {
        getJspContext().getOut().write("Hello " + user + " from " + dept + ", the newest movies are: <br>");

        for(String one : movies){
            getJspContext().setAttribute("movie", one);
            getJspBody().invoke(null);
        }
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }
}
