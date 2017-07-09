package com.wll.test.hfjsp.chapter9.util;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * Created by wll on 11/21/15.
 */
public class Test4TagHandler extends SimpleTagSupport {
    private String param1;

    //The Container calls doTag() when the JSP invokes the tag using the name declared in the TLD.
    @Override
    public void doTag() throws JspException, IOException {
        getJspContext().getOut().write("Test4 Input param: " + param1 + "<br>");
        getJspBody().invoke(null); //输出到response
    }

    //Container calls this method to set the value from the tag attribute.
    //It uses JavaBean property naming conventions to figure out
    // that a xxx attribute should be set to the setXxx method.


    public void setParam1(String param1) {
        this.param1 = param1;
    }
}
