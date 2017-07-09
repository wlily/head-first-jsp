<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/21/15
  Time: 6:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="mine" uri="mytest" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <style>
        li {
            padding-top: 5px;
        }
    </style>
</head>
<body>

<ul><b>Three kinds of expression for value of attribute or tag body that allows runtime expressions.</b>
    <li>Use EL expression:</li>
    <mine:test1 user="${param.userName}" dept="${param.dept}"/>

    <li>Use Scripting expression:</li>
    <mine:test1 user='<%= request.getParameter("userName") %>' dept='<%= request.getParameter("dept") %>'/>

    <li>Use jsp:attribute:</li>
    <mine:test1>
        <jsp:attribute name="user">${param.userName}</jsp:attribute>
        <jsp:attribute name="dept">${param.dept}</jsp:attribute>
    </mine:test1>
</ul>

<ul><b>Three body-content type</b>
    <li>Test2 JSP?</li>
    <%--<mine:test2 param1="${param.userName}">--%>
        <%--test2--%>
        <%--${param.userName}--%>
    <%--</mine:test2>--%>

    <li>Test3 tagdependent</li>
    <mine:test3 param1="${param.userName}">
        ${param.dept}
    </mine:test3>

    <li>Test4 Scriptless</li>
    <mine:test4 param1="${param.userName}">
        ${param.dept}
    </mine:test4>
</ul>


</body>
</html>
