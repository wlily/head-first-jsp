<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/21/15
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="errorPage.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>

<h4>By catch, exception is captured and the page won't redirect to errorPage</h4>
<c:catch>
  <% int x = 10/0;%>
</c:catch>

<br>Exception was: ${pageContext.exception}


<h4>By var, exception object is put in pageScope attribute</h4>
<c:catch var="myException">
  <% int x = 10/0;%>
  <br>After exception, you will never see this
</c:catch>

<c:if test="${myException != null}">
  <br>There was an exception: ${myException.message}<br>
</c:if>
<br>we survived.


<h4>EL operator doesn't throw exception</h4>
<c:catch var="myException2">
  <br> ${10/0}
</c:catch>

<c:if test="${myException2 != null}">
  <br>There was an exception: ${myException2.message}
</c:if>

</body>
</html>
