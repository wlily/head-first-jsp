<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/5/15
  Time: 8:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<br><br>Request Param name is: ${param.name}
<br><br>Request Param empID is: ${param.empID}
<br><br>Request Param food is: ${param.food}

<br><br>First food request param is: ${paramValues.food[0]}
<br><br>Second food request param is: ${paramValues.food[1]}

<br><br>Host is: ${header["host"]}
<br><br>Host is: ${header.host}
<br><br>Method is: ${pageContext.request.method}

</body>
</html>
