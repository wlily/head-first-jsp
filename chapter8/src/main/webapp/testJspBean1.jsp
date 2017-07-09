<%@ page import="com.wll.test.hfjsp.chapter8.model.Person" %>
<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/18/15
  Time: 7:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

Person created by servlet: <%= ((Person)request.getAttribute("person")).getName()%>

<jsp:useBean id="person" class="com.wll.test.hfjsp.chapter8.model.Person" scope="request"/>
Person created by servlet: <jsp:getProperty name="person" property="name" />
</body>
</html>
