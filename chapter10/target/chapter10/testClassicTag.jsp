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
    <li>Classic Tag1: no body</li>
    <mine:classic1>
        <br>This is the body. <br>
    </mine:classic1>

    <li>Classic Tag2: has body and loop body</li>
    <mine:classic2>
        <br>This is the body. ${movie}<br>
    </mine:classic2>

</ul>
</body>
</html>
