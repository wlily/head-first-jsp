<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="true" %>

<ul>
    <li><b>Tag File</b>
        <ul>
            <li>how to define tag file
                <ul>
                    <li>tag file: mytag.jsp->mytag.tag</li>
                    <li>directory: WEB-INF/tags</li>
                    <li>define atribute: &lt;%@ attribute %&gt;</li>
                    <li>define bodytype: &lt;%@ tag %&gt;</li>
                </ul>
            </li>
            <li>how to use tag file
                <ul>
                    <li>&lt;@taglib prefix="" tagdir=""&gt;</li>
                </ul>
            </li>

        </ul>
    </li>
    <li><b>Simple custom tag</b>
        <ul>
            <li>how to define simple custom tag
                <ul>
                    <li>tag class: extends SimpleTagSupport, implement doTag()</li>
                    <li>tld file: &lt;taglib&gt;&lt;tag&gt;</li>
                </ul>
            </li>
            <li>the lifecycle of simple custom tag
                <ul>
                    <li>Container load SimpleTag class</li>
                    <li>Container instantiate SimpleTag handler object(no-arg constructor) when JSP invoke the tag</li>
                    <li>Container call setJspContext() to set PageContext to tag handler</li>
                    <li>Container call setParent() if the tag is nested</li>
                    <li>Container call attribute setters if the tag has attributes</li>
                    <li>Container call setJspBody() if the tag has body and the tag is not declared empty</li>
                    <li>Container call doTag</li>
                </ul>
            </li>
            <li>How to use simple custom tag
                <ul>
                    <li>&lt;@taglib prefix="" uri=""&gt;</li>
                </ul>
            </li>
        </ul>
    </li>
    <li><b>Classic custom tag</b>
        <ul>
            <li>how to define Classic custom tag
                <ul>
                    <l>tag class: extends TagSupport, BodyTagSupport</l>
                    <li>tld file: &lt;taglib&gt;&lt;tag&gt;</li>
                </ul>
            </li>
            <li>the lifecycle of Classic custom tag(depends on return values)
                <ul>
                    <li>Container load ClassicTag class</li>
                    <li>Container instantiate ClassicTag handler object(no-arg constructor) when JSP first invoke the tag</li>
                    <li>Container call setPageContext() to set PageContext to tag handler</li>
                    <li>Container call setParent() if the tag is nested</li>
                    <li>Container call attribute setters if the tag has attributes</li>
                    <li>Container call doStartTag(), return: SKIP_BODY, EVAL_BODY_INCLUDE, EVAL_BODY_BUFFERED</li>
                    <li>Container evaluate the tag body if the tag has body and the tag is not declared empty and doStartTag() return EVAL_BODY_INCLUDE</li>
                    <li>Container call doAfterBody if body is evaluated, doAfterBody can be invoked more than once. return: SKIP_BODY,EVAL_BODY_AGAIN</li>
                    <li>Container call doEndTag, return: SKIP_PAGE, EVAL_PAGE </li>
                </ul>
            </li>
        </ul>
    </li>
</ul>