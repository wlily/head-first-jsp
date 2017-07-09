<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Using JSP</title>
    <link rel="stylesheet" href="/css/mystyle.css">
</head>
<body>

<%@ page isELIgnored="true" %>

<div id="content-left">
    <h3>Contents</h3>
    <%@include file="left.html"%>
</div>


<div id="content-right">
    <h3>Examples</h3>
    <%@include file="right.jsp"%>
</div>

</body>
</html>