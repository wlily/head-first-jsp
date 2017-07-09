<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/19/15
  Time: 8:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<h3>Member Comments</h3>
<hr>
<%--<c:forEach var="one" items="${commentList}">--%>
<c:forEach var="one" items="${requestScope.commentList}">
  ${one}<br>
</c:forEach>
<hr>


<c:if test="${param.userType eq 'member'}">
  <jsp:include page="inputComments.jsp"/>
</c:if>

</body>
</html>
