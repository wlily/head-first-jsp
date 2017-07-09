<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/24/15
  Time: 7:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--标记文件方式文件目录必须是/WEB-INF/tags或其子目录-->
<%@taglib prefix="myTags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title></title>
</head>

<jsp:include page="header.jsp">
  <jsp:param name="subTitle" value="Search something"/>
</jsp:include>

<myTags:header subTitle="Search some thing" fontColor="#660099">
  This is the body, aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.
  ${ggg}
  <%=1*2%>
  <%@include file="header.jsp"%>
</myTags:header>

Welcome to our site.

</body>
</html>
