package com.wll.test.hfjsp.chapter10.util;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.*;

/**
 * Created by wll on 11/25/15.
 */
public class TestClassicTagHandler2 extends TagSupport {
    private JspWriter out;
    private String[] movies = new String[]{
            "hahaha", "gagagag", "wawawa"
    };
    private int movieCount = 0;


    @Override
    public int doStartTag() throws JspException {
        movieCount = 0;
        out = pageContext.getOut();
        try {
            out.println("in doStartTag");
        } catch (IOException e) {
            throw new JspException("IOException-" + e.toString());
        }
        return EVAL_BODY_INCLUDE;
    }

    @Override
    public int doEndTag() throws JspException {
        try {
            out.println("in doEndTag");
        } catch (IOException e) {
            try {
                File file = new File("/home/wll/log.log");
                e.printStackTrace(new PrintStream(new FileOutputStream(file)));
            } catch (FileNotFoundException e1) {
                e1.printStackTrace();
            }
            e.printStackTrace();
            throw new JspException("IOException-" + e.toString());
        }
        return EVAL_PAGE;
    }

    @Override
    public int doAfterBody() throws JspException {
        if(movieCount < movies.length){
            pageContext.setAttribute("movie", movies[movieCount]);
            movieCount++;
            return EVAL_BODY_AGAIN;
        }
        else {
            return SKIP_BODY;
        }
    }
}
