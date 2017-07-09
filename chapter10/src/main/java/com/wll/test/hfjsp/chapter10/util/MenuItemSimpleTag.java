package com.wll.test.hfjsp.chapter10.util;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * Created by wll on 11/26/15.
 */
public class MenuItemSimpleTag extends SimpleTagSupport {
    private String itemValue;
    
    @Override
    public void doTag() throws JspException, IOException {
        MenuSimpleTag parent = (MenuSimpleTag) getParent();
        parent.addMenuItem(itemValue);
    }

    public String getItemValue() {
        return itemValue;
    }

    public void setItemValue(String itemValue) {
        this.itemValue = itemValue;
    }
}
