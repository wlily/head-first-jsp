<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 10/29/15
  Time: 9:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<h1 align="center">Beer Recommendations JSP</h1>

<p>
    <%
        List<String> styles = (List<String>) request.getAttribute("styles");
        for (String one : styles) {
            out.print("<br>try: " + one);
        }
    %>
</p>
</body>
</html>
