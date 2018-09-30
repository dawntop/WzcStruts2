<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>安徽聚力粮机科技股份有限公司</title>
<link rel="stylesheet" type="text/css" href="./css/index.css"/>

<script src="jquery.js"></script>
<script type="text/javascript">
	function checkLogin(form) {
		//check user is null
		var x = document.getElementById("user");
		var hint = document.getElementById("userhint");
		if (x.value == "") {
			x.style.border='1px solid red';
			x.focus();
			hint.innerHTML = "★请输入用户名"; // 改变内容
			hint.style.color = "red";
			hint.style.fontSize= "small";
			return false;
		} else {
			x.style.border='1px solid gray';
			hint.innerHTML = "";
		}
		
		//check password is NULL
		x = document.getElementById("password");
		hint = document.getElementById("pswdhint");
		if (x.value == "") {
			x.style.border='1px solid red';
			x.focus();
			hint.innerHTML = "★请输入密码"; // 改变内容
			hint.style.color = "red";
			hint.style.fontSize= "small";
			return false;
		} else {
			x.style.border='1px solid gray';
			hint.innerHTML = "";
		}

		return true;
	}

	function registe() {
		window.location = "registe.jsp";
	}
</script>
</head>

<body>
	<table id="head">
		<tr>
			<td><img id="img"
				src=<%=request.getContextPath() + "/image/Logo.jpg"%>></img>
			</td>
			<td>
				<h1 id="title">安徽聚力粮机科技股份有限公司</h1>
			</td>
		</tr>
	</table>

	<form action="loginaction" method="post" id="loginaction" name="loginaction">
		<div id="login">
			<h3 align="center">用户登录</h3>
			<lable for="user">用户名：</lable><input type="text" name="user" id="user" placeholder="请输入用户名"/><lable for="user" class="bz">*</lable><br />
			<p id="userhint"></p>
			
			<lable for="password">密&nbsp;&nbsp;&nbsp;码：</lable>
			<input type="password" name="password" id="password" placeholder="请输入密码 "/>
			<lable for="password" class="bz">*</lable><br />
			<p id="pswdhint"></p>
			
			<input type="button" value="注册" name="registebtn" onclick="registe()"/>
			<input type="reset" value="重置">
			<input type="submit" value="登录" onclick="return checkLogin(this.form);"/>
		</div>
	</form>
	<!-- 
   <form action="hello">
      <label for="name">Please enter your name</label><br/>
      <input type="text" name="name"/>
      <input type="submit" value="Say Hello"/>
   </form>
   
   <form action="hello_fm">
      <label for="name">Please enter your name</label><br/>
      <input type="text" name="name"/>
      <input type="submit" value="Say Hello FM"/>
   </form>
   
   <form action="hello2">
      <label for="name">Please pick a name</label><br/>
      <select name="name">
         <option name="Mike">Mike</option>
         <option name="Jason">Jason</option>
         <option name="Mark">Mark</option>
      </select>
      <input type="submit" value="Say Hello"/>
   </form>
   
   <form action="upload" method="post" enctype="multipart/form-data">
      <label for="myFile">Upload your file</label>
      <input type="file" name="myFile" />
      <input type="submit" value="Upload"/>
   </form>
   
   
   <s:form action="empinfo" method="post">
      <s:textfield name="name" label="Name" size="20" />
      <s:textfield name="age" label="Age" size="20" />
      <s:submit name="submit" label="Submit" align="center" />
   </s:form>
   
   -->
<footer>
  <p>版权所有 © 聚力粮机</p>
  <p>地址：安徽省界首市东城工业园区2号安徽聚力粮机科技股份有限公司</p>
</footer>
</body>
</html>