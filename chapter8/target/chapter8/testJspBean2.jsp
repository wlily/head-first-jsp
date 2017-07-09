<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/4/15
  Time: 8:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<!--jsp:useBean, if the attribute not found, create one -->
<jsp:useBean id="employee"
             type="com.wll.test.hfjsp.chapter8.model.Person"
             class="com.wll.test.hfjsp.chapter8.model.Employee"
             scope="request">
  <jsp:setProperty name="employee" property="name" param="userName"/>
  <jsp:setProperty name="employee" property="empID" param="userID"/>
</jsp:useBean>


<br>UserName:   <jsp:getProperty name="employee" property="name"/>
<br>EmployeeID: <jsp:getProperty name="employee" property="empID"/>
</body>
</html>
