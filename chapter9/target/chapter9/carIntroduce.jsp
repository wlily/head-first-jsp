<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/19/15
  Time: 8:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<c:choose>
  <c:when test="${param.userPref == 'performance'}">
    Now you can stop even if you <em>do</em> drive insanely fast.
  </c:when>
  <c:when test="${param.userPref eq 'safety'}">
    Our brakes will never lock up, no matter how bad a driver you are.
  </c:when>
  <c:when test="${param.userPref == 'maintenance'}">
    Lost your tech job? No problem--you won't have to service these brakes for at least three years.
  </c:when>
  <c:otherwise>
    Our brakes are the best.
  </c:otherwise>
</c:choose>

<h3>The Brakes</h3>
Our advanced anti-lock brake system(ABS) is engineered to give you the ability to steer even as you're stopping.
We have the best speed sensors of any car this size.
</body>
</html>
