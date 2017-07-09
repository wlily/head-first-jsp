<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/5/15
  Time: 10:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>

Welcome to our page!

<%if(request.getParameter("userName") == null){%>
<jsp:forward page="login.jsp" />
<% } %>

<%--<c:if test="${empty param.userName}">--%>
  <%--<jsp:forward page="login.jsp" />--%>
<%--</c:if>--%>

<br>Hello ${param.userName}

</body>
</html>
