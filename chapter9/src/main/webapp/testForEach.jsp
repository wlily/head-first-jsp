<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/19/15
  Time: 7:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<h3>Movie List:</h3>
<table>
  <c:forEach var="movie" items="${movieList}">
    <tr>
      <td>${movie}</td>
    </tr>
  </c:forEach>
</table>

<h3>Movie List with count:</h3>
<table>
  <c:forEach var="movie" items="${movieList}" varStatus="movieLoopCount">
    <tr>
      <td>Count:${movieLoopCount.count}</td>
    </tr>
    <tr>
      <td>${movie}</td>
    </tr>
  </c:forEach>
</table>

<h3>Movie list of movie arrays:</h3>
<table>
  <c:forEach var="listElement"  items="${movies}">
    <c:forEach var="movie" items="${listElement}">
      <tr>
        <td>${movie}</td>
      </tr>
    </c:forEach>
  </c:forEach>
</table>
</body>
</html>
