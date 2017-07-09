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

<ul>
    <b>Three kinds of expression for value of attribute or tag body that allows runtime expressions.</b>
    <li>Use EL expression:</li>
    <table>
        <mine:test1 user="${param.userName}" dept="${param.dept}">
            <tr>
                <td>${movie}</td>
            </tr>
        </mine:test1>
    </table>

    <li>Use Scripting expression:</li>
    <table>
        <mine:test1 user='<%= request.getParameter("userName") %>' dept='<%= request.getParameter("dept") %>'>
            <tr>
                <td>${movie}</td>
            </tr>
        </mine:test1>
    </table>

    <li>Use jsp:attribute, jsp:body :</li>
    <table>
        <mine:test1>
            <jsp:attribute name="user">${param.userName}</jsp:attribute>
            <jsp:attribute name="dept">${param.dept}</jsp:attribute>
            <jsp:body>
                <tr>
                    <td>${movie}</td>
                </tr>
            </jsp:body>
        </mine:test1>
    </table>
</ul>
<ul>
    <b>SkipPageException</b>
    <br>About to invoke a tag that throws SkipPageException. <br>
    <table>
        <mine:test2 user="${param.userName}" dept="${param.dept}">
            <tr>
                <td>${movie}</td>
            </tr>
        </mine:test2>
    </table>
    <br>Back to the page after invoking the tag.
</ul>

</body>
</html>
