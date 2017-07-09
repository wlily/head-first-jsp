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

<jsp:useBean id="employee"
             type="com.wll.test.hfjsp.chapter8.model.Person"
             class="com.wll.test.hfjsp.chapter8.model.Employee"
             scope="request">
    <%--<jsp:setProperty name="employee" property="name"/>--%>
    <%--<jsp:setProperty name="employee" property="empID"/>--%>
    <jsp:setProperty name="employee" property="*"/>
</jsp:useBean>

<br>UserName:
<jsp:getProperty name="employee" property="name"/>
<br>EmployeeID:
<jsp:getProperty name="employee" property="empID"/>

<br>
<br>UserName2: ${employee.name}
<br>EmployeeID2: ${employee.empID}

</body>
</html>
