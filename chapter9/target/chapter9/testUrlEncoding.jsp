<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/21/15
  Time: 11:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<c:set var="last" value="Hidden Cursor"/>
<c:set var="first" value="Crouching Pixels" />

<c:url value="inputComments.jsp?first=${first}&last=${last}" var="inputURL" />
Thr URL is: ${inputURL} <br>


<c:url value="inputComments.jsp" var="inputURL">
  <c:param name="firstName" value="${first}" />
  <c:param name="lastName" value="${last}" />
</c:url>

Now the URL looks like this: ${inputURL}

</body>
</html>
