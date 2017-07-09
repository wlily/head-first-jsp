
<!--A directive is a way for you  to give special instructions to the Container at page translation time.-->
<%@ page import="com.wll.test.hfjsp.chapter7.model.Counter" %>

<table>
  <!--when translated, scriptlets are copyed to _jspservice() method -->
  <tr>
    <td>Page count by scriptlet and model:</td>
    <td><% out.println(Counter.getCount()); %></td>
  </tr>

  <!--when translated, expression becomes the input of out.print()-->
  <tr>
    <td>Page count by expression and model:</td>
    <td><%= Counter.getCount() %></td>
  </tr>
  <tr>
    <td>Page count by expression and instance method declaration:</td>
    <td><%= getCount() %></td>
  </tr>

</table>
<br><br>
<a href="TestInit.jsp">Test JSP Init() and Attributes</a>


<!--where translated, declaration becomes the instance variable and method-->
<%!
  int count1 = 1;

  public int getCount(){
    count1 ++;
    return count1;
  }

%>