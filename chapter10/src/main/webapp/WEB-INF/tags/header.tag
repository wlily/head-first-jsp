
<%@ attribute name="subTitle" required="true" rtexprvalue="true" %>
<%@ attribute name="fontColor" required="true" rtexprvalue="true" %>
<%@ tag body-content="tagdependent" %> <!--body的内容当做纯文本处理-->

<img src="images/logo_baidu.png">
<br>
<em><strong>${subTitle}</strong></em>
<em><strong><span style="color: ${fontColor}; "><jsp:doBody/></span></strong></em>
<br><br>
