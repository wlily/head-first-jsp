<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="true" %>

<ul>
    <li><b>The 4 servlet Security Concepts</b>
        <ul>
            <li>Authentication</li>
            <li>Authorization</li>
            <li>Confidentiality</li>
            <li>Data Integrity</li>
        </ul>
    </li>
    <li><b>How does the Container do Authentication and Authorization</b>
        <ul>
            <li>Performed a lookup on the resource being requested</li>
            <li> Performed some authentication
                <ul>
                    <li><a href="authentication.html">4 authentication type</a></li>
                </ul>
            </li>
            <li>Performed some authorization
                <ul>
                    <li><a href="images/roleDefine.png">Step1: defining role</a></li>
                    <li><a href="images/resourceMethodConstraint.png">Step2: defining resource/method constraints in DD</a></li>
                </ul>
            </li>
        </ul>
    </li>
    <li><b>How does the Container do Confidentiality and Integrity</b>
        <ul>
            <li><a href="images/privacy.png">How to declare using confidentiality and integrity</a></li>
            <li><a href="images/transport1.png">Container work flow without transport-guarentee</a></li>
            <li><a href="images/transport2.png">Container work flow with transport-guarentee</a></li>
            </ul>
    </li>
</ul>