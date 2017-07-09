package com.wll.test.hfjsp.chapter10.util;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wll on 11/26/15.
 */
public class MenuClassicTag extends TagSupport {
    private List<String> children;


    @Override
    public int doStartTag() throws JspException {
        children = new ArrayList<String>();
        return EVAL_BODY_INCLUDE;
    }

    @Override
    public int doEndTag() throws JspException {
        try {
            pageContext.getOut().println("Menu items are: " + children);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return EVAL_PAGE;
    }

    @Override
    public int doAfterBody() throws JspException {
        return super.doAfterBody();
    }

    public void addMenuItem(String item){
        children.add(item);
    }
}
