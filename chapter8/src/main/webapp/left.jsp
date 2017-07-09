<%@ page isELIgnored="true" %>

<ul>
    <li><b>JSP standard actions</b>
        <ul>
            <li>jsp:useBean
                <ul>use or create a bean</ul>
            </li>
            <li>jsp:setProperty</li>
            <li>jsp:getProperty</li>
            <li>jsp:include
                <ul>happens at runtime while include directive happens at translation time</ul>
            </li>
            <li>jsp:forward
                <ul>the buffer is cleared before the forward</ul>
            </li>
            <li>jsp:param</li>
        </ul>
    </li>
    <li><b>EL expression ${firstThing.secondThing}</b>
        <ul>
            <li>first named variable is either an implicit object or an attribute</li>
        </ul>
    </li>
    <li><b>EL implicit variables</b>
        <ul>
            <li>pageScope----------------map</li>
            <li>requestScope-------------map</li>
            <li>sessionScope-------------map</li>
            <li>applicationScope---------map</li>
            <li>param,paramValues--------map</li>
            <li>header,headerValues------map</li>
            <li>cookie-------------------map</li>
            <li>initParam----------------map</li>
            <li>pageContext--------------javaBean</li>
        </ul>
    </li>
    <li><b>EL operators</b>
        <ul>
            <li>property access (. operator, access bean and map)</li>
            <li>collection access ([] operator, access bean, map, array and list)</li>
            <li>arithmetic operators</li>
            <li>relational operators</li>
            <li>logical operators</li>
        </ul>
    </li>
    <li><b>EL functions</b>
        <ul>
            <li>write class with public static method</li>
            <li>write tld</li>
            <li>put taglib directive in jsp</li>
            <li>use el to invoke the function using ${prefix:name()}</li>
        </ul>

    </li>
</ul>