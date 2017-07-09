<style>
    form{
        font-size: 11pt;
    }
    li{
        padding-top: 5px;
    }
</style>
<ul>
    <li>JSP standard action
        <ul>
            <li>jsp:useBean,jsp:setProperty,jsp:getProperty
                <ul>
                    <li>
                        <a href="testJspBean1.do">access javabean attributes' String or primitive properties</a>
                    </li>
                    <li>param different with bean property
                        <form action="testJspBean2.jsp">
                            UserName: <input type="text" name="userName"/>
                            UserID:<input type="text" name="userID"/>
                            <input type="submit"/>
                        </form>
                    </li>
                    <li>param same with bean property
                        <form action="testJspBean3.jsp">
                            UserName:<input type="text" name="name"/>
                            UserID:<input type="text" name="empID"/>
                            <input type="submit"/>
                        </form>

                    </li>
                </ul>
            </li>
            <li><a href="testInclude.jsp?htip=Hello+Head&ftip=Hello+Foot">test jsp:include </a></li>
            <li><a href="testForward.jsp">test jsp:forward </a></li>
        </ul>
    </li>

    <br>
    <li>Expression Language(EL)
        <ul>
            <li><a href="testEl1.do">access nested properties of attributes</a></li>
            <li><a href="testEl2.do">EL access operators: . vs []</a></li>

            <li>implicit object
                <ul>
                    <form action="elImplicitObjects.jsp">
                        <table>
                            <tr><td>Name:</td><td><input type="text" name="name"></td></tr>
                            <tr><td>ID:</td><td><input type="text" name="empID"></td></tr>
                            <tr><td>First food:</td><td><input type="text" name="food"></td></tr>
                            <tr><td>Second food:</td><td><input type="text" name="food"></td></tr>
                            <tr><td><input type="submit"></td></tr>
                        </table>
                    </form>
                </ul>
            </li>
            <li><a href="testEl4.do">Test EL Operation</a></li>
            <li><a href="elFuntion.jsp">Test EL Function</a></li>
        </ul>
    </li>
</ul>

