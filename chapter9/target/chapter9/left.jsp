<%@ page isELIgnored="true" %>

<ul>
    <li><b>JSTL core library</b>
        <ul>
            <li>general purpose tags
                <ul>
                    <li>c:out</li>
                    <li>c:set
                        <ul>
                            <li>var(attribute id): setting attribute variables</li>
                            <li>target(attribute object): setting bean properties or Map valuse</li>
                        </ul>
                    </li>
                    <li>c:remove</li>
                    <li>c:catch</li>
                </ul>
            </li>
            <li>conditional tags
                <ul>
                    <li>c:if</li>
                    <li>c:choose</li>
                    <li>c:when</li>
                    <li>c:otherwise</li>
                </ul>
            </li>
            <li>iteration tags
                <ul>
                    <li>forEach</li>
                    <li>forEachToken</li>
                </ul>
            </li>
            <li>url-related
                <ul>
                    <li>c:import
                        <ul>like jsp:include, but c:import can include resource outside the webapp</ul>
                    </li>
                    <li>c:param
                        <ul>url encoding</ul>
                    </li>
                    <li>c:url
                        <ul>url rewriting</ul>
                    </li>
                    <li>c:redirect</li>
                </ul>
            </li>
        </ul>
    </li>
    <li><b>EL Function vs Custom tags</b></li>
    With EL functions, you created a Java class with a static method, named the method whatever you wanted,
    then use the TLD to map the actual method to the function name.
    <br>
    But with custom tags, the method name is ALWAYS <b>doTag()</b>,
    so you never declare the method name for a custom tag.
    Only functions use a method signature declaration in the TLD!
    <%--<li>Formatting library--%>
        <%--<ul>--%>
            <%--<li>fmt:message</li>--%>
            <%--<li>fmt:setLocale</li>--%>
            <%--<li>fmt:setBundle</li>--%>
            <%--<li>fmt:param</li>--%>
            <%--<li>fmt:requestEncoding</li>--%>
            <%--<li>fmt:timeZone</li>--%>
            <%--<li>fmt:setTimeZone</li>--%>
            <%--<li>fmt:formatNumber</li>--%>
            <%--<li>fmt:parseNumber</li>--%>
            <%--<li>fmt:parseDate</li>--%>
        <%--</ul>--%>
    <%--</li>--%>
    <%--<li>SQL library--%>
        <%--<ul>--%>
            <%--<li>sql:query</li>--%>
            <%--<li>sql:update</li>--%>
            <%--<li>sql:setDataSource</li>--%>
            <%--<li>sql:param</li>--%>
            <%--<li>sql:dateParam</li>--%>
        <%--</ul>--%>
    <%--</li>--%>
    <%--<li>XML library--%>
    <%--<ul>--%>
        <%--<li>x:parse</li>--%>
        <%--<li>x:out</li>--%>
        <%--<li>x:set</li>--%>
        <%--<li>x:if</li>--%>
        <%--<li>x:choose</li>--%>
        <%--<li>x:when</li>--%>
        <%--<li>x:otherwise</li>--%>
        <%--<li>x:forEach</li>--%>
        <%--<li>x:transform</li>--%>
        <%--<li>x:param</li>--%>
    <%--</ul>--%>
    <%--</li>--%>
</ul>