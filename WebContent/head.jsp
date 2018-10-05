<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>公共头部</title>
<link rel="stylesheet" type="text/css" href="./css/head.css" />

<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function test(id) {
		document.getElementById(id).style.display = 'block';
	}
	function test1(id) {
		document.getElementById(id).style.display = 'none';
	}

	
</script>

</head>

<body>
	<nav class="navbar navbar-default" role="navigation">
		<img class="img" src=<%=request.getContextPath() + "/image/Logo.jpg"%>></img>
		<p class="title">聚力粮机</p>
		<div id="menu">
		<ul class="nav navbar-nav" onmouseover="test('showc')"
			onmouseleave="test1('showc')">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">编程语言1 <b class="caret"></b>
			</a>
				<ul class="dropdown-menu" style="display: none;" id="showc">
					<li><a>ASP</a></li>
					<li><a>JSP</a></li>
					<li><a>PHP</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav" onmouseover="test('showc2')"
			onmouseleave="test1('showc2')">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">编程语言2 <b class="caret"></b>
			</a>
				<ul class="dropdown-menu" style="display: none;" id="showc2">
					<li><a>ASP</a></li>
					<li><a>JSP</a></li>
					<li><a>PHP</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav" onmouseover="test('showc3')"
			onmouseleave="test1('showc3')">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">编程语言3 <b class="caret"></b>
			</a>
				<ul class="dropdown-menu" style="display: none;" id="showc3">
					<li><a>ASP</a></li>
					<li><a>JSP</a></li>
					<li><a>PHP</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav" onmouseover="test('showc4')"
			onmouseleave="test1('showc4')">
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">编程语言4 <b class="caret"></b>
			</a>
				<ul class="dropdown-menu" style="display: none;" id="showc4">
					<li><a>ASP</a></li>
					<li><a>JSP</a></li>
					<li><a>PHP</a></li>
				</ul></li>
		</ul>
		<ul class="nav navbar-nav" onmouseover="test('showc5')"
			onmouseleave="test1('showc5')">
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