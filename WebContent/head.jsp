<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.wzc.common.Common"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" type="text/css" href="./css/head.css" />

<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function display(id) {
		document.getElementById(id).style.display = 'block';
	}
	function disappear(id) {
		document.getElementById(id).style.display = 'none';
	}
	
</script>
<title>公共头部</title>
</head>
<body>
	<div class="headbar">
		<div class="headbarleft">
			<marquee scrollAmount=2 width=100%  behavior="scroll" direction="right">Welcome <%=(session.getAttribute("name") == null)?"游客":session.getAttribute("name")%></marquee>
		</div>
		<div class="headbarright">
			<a onclick="parent.location.reload();">刷新</a> 
			<a href="registe.jsp" target="_black">注册</a> 
			<a href="login.jsp" target="_parent">登录</a>
			<a href="index.jsp" target="_parent" onclick="<%session.invalidate();%>">注销</a>
		</div>
	</div>
	<nav class="navbar navbar-default">
		<a href="index.jsp" target="_top"><img class="img" src=<%=request.getContextPath() + "/image/Logo.jpg"%>></img></a>
		<a class="title" href="index.jsp" target="_parent">聚力粮机</a>
		<div id="menu">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp" class="dropdown-toggle">首页</a></li>
			</ul>
			<ul class="nav navbar-nav" onmouseover="display('showc2')"
				onmouseleave="disappear('showc2')">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">编程语言2 <b class="caret"></b>
				</a>
					<ul class="dropdown-menu" style="display: none;" id="showc2">
						<li><a>ASP</a></li>
						<li><a>JSP</a></li>
						<li><a>PHP</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav" onmouseover="display('showc3')"
				onmouseleave="disappear('showc3')">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">编程语言3 <b class="caret"></b>
				</a>
					<ul class="dropdown-menu" style="display: none;" id="showc3">
						<li><a>ASP</a></li>
						<li><a>JSP</a></li>
						<li><a>PHP</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav" onmouseover="display('showc4')"
				onmouseleave="disappear('showc4')">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">编程语言4 <b class="caret"></b>
				</a>
					<ul class="dropdown-menu" style="display: none;" id="showc4">
						<li><a>ASP</a></li>
						<li><a>JSP</a></li>
						<li><a>PHP</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav" onmouseover="display('showc5')"
				onmouseleave="disappear('showc5')">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">编程语言5 <b class="caret"></b>
				</a>
					<ul class="dropdown-menu" style="display: none;" id="showc5">
						<li><a>ASP</a></li>
						<li><a>JSP</a></li>
						<li><a>PHP</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>
</body>
</html>