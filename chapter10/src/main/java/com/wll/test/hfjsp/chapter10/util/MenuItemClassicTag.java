package com.wll.test.hfjsp.chapter10.util;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * Created by wll on 11/26/15.
 */
public class MenuItemClassicTag extends TagSupport {
    private String itemValue;

    @Override
    public int doStartTag() throws JspException {
        return EVAL_BODY_INCLUDE;
    }

    @Override
    public int doEndTag() throws JspException {
        MenuClassicTag parent = (MenuClassicTag)getParent();
        parent.addMenuItem(itemValue);
        return EVAL_PAGE;
    }

    @Override
    public int doAfterBody() throws JspException {
        return super.doAfterBody();
    }

    public String getItemValue() {
        return itemValue;
    }

    public void setItemValue(String itemValue) {
        this.itemValue = itemValue;
    }
}
