<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<c:set var="userStatus" scope="request" value="Brilliant" />
<br>userStatus:${userStatus}

<c:remove var="userStatus" scope="request" />
<br>userStatus is now:${userStatus}
</body>
</html>
