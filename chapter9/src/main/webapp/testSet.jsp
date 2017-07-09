<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/19/15
  Time: 9:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<br>userLevel: ${userLevel}

<c:set var="userLevel" value="Cowboy" />
<br>userLevel: ${userLevel}

<c:set var="userLevel">
Cowbody,Sheriff
</c:set>
<br>userLevel: ${userLevel}

<!--no userLevel2, create one-->
<br>userLevel2: ${userLevel2}
<c:set var="userLevel2" value="Cowboy" />
<br>userLevel2: ${userLevel2}


<br>Fido:${Fido}
<!---no person attribute, ${person2} is null, Fido attribute is removed-->
<c:set var="Fido" value="${person2}"/>
<br>Fido:${Fido}
<br>
<c:forEach var="one" items="${requestScope}">
  <c:if test="${!one.key.startsWith('javax')}">
    ${one.key}
  </c:if>
</c:forEach>
<br>
<c:forEach var="one" items="${pageScope}">
  <c:if test="${!one.key.startsWith('javax')}">
    ${one.key}
  </c:if>
</c:forEach>


<br>
<br>petMap dogName:${petMap.dogName}
<c:set target="${petMap}" property="dogName" value="Clover"/>
<br>petMap dogName:${petMap.dogName}

<br>person name:${person.name}
<c:set target="${person}" property="name">May</c:set>
<br>person name:${person.name}
</body>
</html>
