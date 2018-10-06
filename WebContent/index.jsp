<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/index.css" />
<title>安徽聚力粮机科技股份有限公司</title>
<script>
function test() {
	alert('test');
	var x= <%=session.getAttribute("name")%>;
	document.getElementById("w").innerHTML = "1" + x + "2";
	alert(x);
}

function test2() {
	alert('test2');
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
		<input type="button" value="测试" onclick="test()" onmouseover="test2()" />
	</div>
</body>
</html>