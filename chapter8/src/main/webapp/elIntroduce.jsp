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

person's dog created by servlet: <%= ((Person)request.getAttribute("person")).getDog().getName()%>

<!---jsp:useBean, jsp:getProperty can't do this, jsp:getProperty can get property of bean, can't get nested property of bean -->

person's dog  created by servlet: ${person.dog.name}
</body>
</html>
