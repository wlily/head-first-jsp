package com.wll.test.hfjsp.chapter9.util;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * Created by wll on 11/21/15.
 */
public class Test1TagHandler extends SimpleTagSupport {
    private String user;
    private String dept;

    //The Container calls doTag() when the JSP invokes the tag using the name declared in the TLD.
    @Override
    public void doTag() throws JspException, IOException {
        getJspContext().getOut().write("Hello " + user + " from " + dept +"<br>");
        getJspContext().getOut().write("Your advice is:" + getAdvice());
    }

    private String getAdvice() {
        String[] adviceStrings = {
                "That color's not working for you.",
                "You should call in sick.",
                "You might want to rethink that haircut"
        };
        int random = (int)(Math.random()*adviceStrings.length);
        return adviceStrings[random];
    }

    //Container calls this method to set the value from the tag attribute.
    //It uses JavaBean property naming conventions to figure out
    // that a "user" attribute should be set to the setUser method.
    public void setUser(String user) {
        this.user = user;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }
}
