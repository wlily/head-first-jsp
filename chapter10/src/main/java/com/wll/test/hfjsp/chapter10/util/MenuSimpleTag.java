package com.wll.test.hfjsp.chapter10.util;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wll on 11/26/15.
 */
public class MenuSimpleTag extends SimpleTagSupport {
    private List<String> children = new ArrayList<String>();

    @Override
    public void doTag() throws JspException, IOException {
        getJspBody().invoke(null);
        getJspContext().getOut().print("Menu items are:" + children);
    }

    public void addMenuItem(String item){
        children.add(item);
    }
}
