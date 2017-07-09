<html>
<head>
    <link rel="stylesheet" href="/css/mystyle.css">
    <title>Web App Architecture</title>
</head>
<body>

<div id="content-left">
    <h3>Contents</h3>
    <ul>
        <li>J2EE Server</li>
        <ul>
            <li>EJB Container</li>
            <li>Web Container
                <ul>
                    <li>Servlet</li>
                    <li>JSP</li>
                </ul>
            </li>
        </ul>
        <br>
        <li>Web Container Resp</li>
        <ul>
            <li>Communications Support</li>
            <li>LifeCycle Management</li>
            <li>Multithreading Support</li>
            <li>Declarative Security</li>
            <li>JSP Support</li>
        </ul>
    </ul>
</div>

<div id="content-right">
    <h3>Examples</h3>
    <br>Today by JSP: <%= new java.util.Date() %>
</div>

</body>
</html>