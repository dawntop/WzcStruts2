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
<style>
ul
{
list-style-type:none;
margin:0;
padding:0;
overflow:hidden;
}
li
{
float:left;
}
a:link,a:visited
{
display:block;
width:120px;
font-weight:bold;
color:#FFFFFF;
background-color:#98bf21;
text-align:center;
padding:4px;
text-decoration:none;
text-transform:uppercase;
}
a:hover,a:active
{
background-color:#7A991A;
}

</style>
<script>
function test() {
	alert("wzc");
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
<ul>
<li><a href="#home">Home</a></li>
<li><a href="#news">News</a></li>
<li><a href="#contact">Contact</a></li>
<li><a href="#about">About</a></li>
</ul>
<div>
<input type="button" id="ceshi" value="测试" onclick="test()" onmouseover="test2()" onmouseleave="test3()" />
</div>

login success <s:property value="name"/>
</body>
</html>