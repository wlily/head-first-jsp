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
</head>
<body>

<mine:ClassicMenu>
    <mine:ClassicMenuItem itemValue="Dogs" />
    <mine:ClassicMenuItem itemValue="Cats" />
    <mine:ClassicMenuItem itemValue="Horses" />
</mine:ClassicMenu>

<br>
<mine:SimpleMenu>
    <mine:SimpleMenuItem itemValue="Apple" />
    <mine:SimpleMenuItem itemValue="Pear" />
    <mine:SimpleMenuItem itemValue="Grape" />
</mine:SimpleMenu>
</body>
</html>
