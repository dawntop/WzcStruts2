<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="./css/registe.css"/>

<script src="jquery.js"></script>
<script type="text/javascript">
	onload = function ()
    {
       var year=new Date().getFullYear(); //获取当前年份
         
       var sel = document.getElementById ('birthyear');//获取select下拉列表
       for ( var i = year; i > year-100; i--)//循环添加当前年份至前100年
       {
           var option = document.createElement ('option');
           option.value = i;
           var txt = document.createTextNode (i);
           option.appendChild (txt);
           sel.appendChild (option);
       }

		var month = new Date().getMonth() + 1;
		$("#birthmonth").find("option[value="+month+"]").attr("selected",true);
    }
	
	function checkRegiste(form) {
		
		return true;
	}
	
</script>

</head>
<body>
	<div id="container">

		<div id="header">
			<h1>欢迎注册</h1>
			<hr />
		</div>

		<div id="guanggao">
			广<br>告<br>位<br>招<br>租<br>！
		</div>
		
		<form action="registeaction" method="post" id="registeaction" name="registeaction">
		<div id="maincontext">
			<br>
			<lable for="user">用户名：</lable><input type="text" id= "user" name="user" /><lable for="user" class="bz">*</lable><br><br> 
			<lable for="pswd">密码：</lable><input type="password" id= "password" name="password" /><lable for="password" class="bz">*</lable><br><br>
			<lable for="pswd2">确认密码：</lable><input type="password" id= "pswd" name="pswd" /><lable for="pswd" class="bz">*</lable><br><br>
			
			<lable for="sex">性别：</lable>
			<input name="sex" type="radio" value="1" checked="checked"/>男
			<input name="sex" type="radio" value="0"/>女<br><br>

			出生日期：<select id="birthyear" name="birthyear"></select>年
			<select id="birthmonth" name="birthmonth">
				<option value=1>1</option>
				<option value=2>2</option>
				<option value=3>3</option>
				<option value=4>4</option>
				<option value=5>5</option>
				<option value=6>6</option>
				<option value=7>7</option>
				<option value=8>8</option>
				<option value=9>9</option>
				<option value=10>10</option>
				<option value=11>11</option>
				<option value=12>12</option>
			</select>月<br><br>
			
			<input type="checkbox" id= "isAgree" />我已阅读并同意《协议》<br><br>
			<!--  -->
			<input type="reset" value="重置">
			<input type="submit" value="注册" onclick="return checkRegiste(this.form);"/>
		</div>
		</form>

		<div id="footer">		
			<hr />
			Copyright © wzc
		</div>

	</div>
</body>
</html>