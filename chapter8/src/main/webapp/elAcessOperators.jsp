<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/4/15
  Time: 9:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<br><br>${person.name}'s Dog's Name: ${person.dog.name}.

<br><br>${person["name"]}'s Dog's Name: ${person["dog"]["name"]}.


<br><br>Favorite musics:${musics}
<br><br>Favorite music0:${musics[0]}
<br><br>Favorite music1:${musics[1]}

<br><br>Favorite foods:${foods}
<br><br>Favorite food0:${foods[0]}
<br><br>Favorite food1:${foods["1"]}

<br><br>Ambient is:${musicMap.Ambient}
<br><br>Ambient is:${musicMap["Ambient"]}
<br><br>Ambient is:${musicMap[Ambient]} <!-- No Ambient attribute, can not find it's value-->
<br><br>Ambient is:${musicMap[Genre]}

<br><br>Mucis is:${musicMap[musicTypes[0]]}

<br><br>Tip of the day:${requestScope.currentTip}


</body>
</html>
