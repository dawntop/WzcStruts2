<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/index.css" />
<script>
function test() {
	var x=  123;
	alert(x);
}

function test2() {
	document.getElementById("ceshi").value = "ceshi";
}

function test3() {
	document.getElementById("ceshi").value = "测试";
}

</script>
</head>

<body>
<iframe src="head.jsp" name="header" id="header" class="header"
		scrolling="no"></iframe>

	<div class="context">
		<p class="w" id="w">123welcome <s:property value="name"/></p>
		<a href="error.jsp">INDEX</a>		
		<a onclick="test();">ceshi</a> 
		<input type="button" id="ceshi" value="测试" onclick="test()" onmouseover="test2()" onmouseleave="test3()" />
	</div>
	
</body>
</html>