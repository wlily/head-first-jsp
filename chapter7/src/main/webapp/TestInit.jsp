<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/16/15
  Time: 9:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<%!
  public void jspInit(){
    ServletConfig servletConfig = getServletConfig();
    String emailAddr = servletConfig.getInitParameter("email");
    ServletContext servletContext = getServletConfig().getServletContext();
    servletContext.setAttribute("mail", emailAddr);
  }
%>

<%
  Float one = new Float(42.5);
  pageContext.setAttribute("mail", "pagecontext@126.com");
%>

<br><br>email by pageContext get attribute: <%= pageContext.getAttribute("mail")%>
<br><br>email by application get attribute: <%= application.getAttribute("mail")%>
<br><br>email by pageContext get application scope attribute: <%= pageContext.getAttribute("mail", PageContext.APPLICATION_SCOPE)%>
<!--first find pageContext scope, then request, then session, finally application scope.-->
<br><br>email by pageContext find attribute: <%= pageContext.findAttribute("mail")%>
<br><br>email by config initParameter:<%= config.getInitParameter("email")%>
</body>
</html>
