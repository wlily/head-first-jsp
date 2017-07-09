<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/5/15
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<!--include directive happens at translation time-->
<%@include file="WEB-INF/html/header.html"%>

<!--jsp:include happens at run time-->
<jsp:include page="WEB-INF/html/header.html"></jsp:include>


<%@ include file="WEB-INF/html/header.jsp"%>

<jsp:include page="WEB-INF/html/header.jsp">
  <jsp:param name="subTitle" value="We take the String out of SOAP."/>
</jsp:include>


This is body!


<%@include file="WEB-INF/html/footer.html"%>
<jsp:include page="WEB-INF/html/header.html"></jsp:include>

<%@include file="WEB-INF/html/footer.jsp"%>
<jsp:include page="WEB-INF/html/footer.jsp"></jsp:include>

</body>
</html>
