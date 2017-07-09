<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/5/15
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<!-- + - * / % &&(and) ||(or) !(not) ==(eq) !=(ne) <(lt) >(gt) <=(le) >=(ge) -->

<br><br>num > 3: ${num > 3}
<br><br>Integer le 12 : ${Integer le 12}
<br><br>requestScope["Integer"] ne 4 and 6 le num || false: ${requestScope["Integer"] ne 4 and 6 le num || false}
<br><br>list[0] || list["1"] and true: ${list[0] || list["1"] and true}
<br><br>num > Integer: ${num > Integer}
<br><br>num == Integer -1: ${num == Integer - 1}


<jsp:useBean id="myDog" class="com.wll.test.hfjsp.chapter8.model.Dog" >
  <jsp:setProperty name="myDog" property="name" value="${list[1]}" />
</jsp:useBean>
<br><br>myDog.name: ${myDog.name}
<br><br>42 div 0: ${42 div 0}

</body>
</html>
