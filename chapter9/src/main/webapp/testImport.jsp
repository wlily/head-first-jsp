<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/19/15
  Time: 10:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<!--import can reach outside the web app-->
<c:import url="WEB-INF/html/header.jsp"/>
<c:import url="WEB-INF/html/footer.jsp"/>

<c:import url="WEB-INF/html/header.jsp">
  <c:param name="htip" value="hello"/>
  <c:param name="subTitle" value="subTitle"/>
</c:import>
</body>
</html>
