package com.wll.test.hfjsp.chapter10.util;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

/**
 * Created by wll on 11/25/15.
 */
public class TestClassicTagHandler1 extends TagSupport {
    private JspWriter out;

    @Override
    public int doStartTag() throws JspException {
        out = pageContext.getOut();
        try {
            out.println("in doStartTag");
        } catch (IOException e) {
            throw new JspException("IOException-" + e.toString());
        }
        return SKIP_BODY;
    }

    @Override
    public int doEndTag() throws JspException {
        try {
            out.println("in doEndTag");
        } catch (IOException e) {
            throw new JspException("IOException-" + e.toString());
        }
        return EVAL_PAGE;
    }

    @Override
    public int doAfterBody() throws JspException {
        return super.doAfterBody();
    }
}
