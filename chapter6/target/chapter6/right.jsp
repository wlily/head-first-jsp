<%--
  Created by IntelliJ IDEA.
  User: wll
  Date: 11/15/15
  Time: 9:01 AM
  To change this template use File | Settings | File Templates.
--%>
<a href="sessionByCookieTest.do">Test session by cookie</a>
<br><br>
<a href="<%= response.encodeURL("sessionByUrlTest.do") %>">Test session by url rewriting</a>
<br><br>
<a href="<%= response.encodeURL("sessionByUrlTest2.do") %>">Test session by redirect url rewriting</a>
<br><br>
<a href="listenerTest.do">Test Session Listener</a>

<br><br>
Test Cookie
<form action="cookieTest.do">
  Input userName: <input type="text" name="userName">
  <input type="submit">
</form>


