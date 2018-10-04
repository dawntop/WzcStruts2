<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<script src="jquery.js"></script>
<script>
	onload = function() {
		showtime(5);
	}
	
	function showtime(t) {
		var x = document.getElementById("btn");
		x.disabled=true;     
		for(i=1;i<=5;i++) {         
			window.setTimeout("update_p(" + i + ","+t+")", i * 1000);    
		}  
	}  
	function update_p(num,t) {
		var x = document.getElementById("btn");
		if(num == t) {         
			document.getElementById("btn").innerHTML ="我已阅读，返回上一页";         
			document.getElementById("btn").disabled=false;     
		} else {        
			printnr = t-num;         
			document.getElementById("btn").innerHTML = "还剩余(" + printnr +")秒，返回上一页"; 
			    
		}
	} 

	function goBack() {   
    	window.history.go(-1);//返回上一页  
    	//window.history.back(-1);//返回上一页  
   }
</script>
<title>协议</title>
</head>
<body>
	<h1>注册协议</h1>
	<p>1.拥党</p>
	<p>2.爱党</p>
	<p>3.学党</p>
	<p>4.敬党</p>
	
	<button id="btn" onclick="goBack()" value="返回上一页" disabled>还剩余(5)秒，返回上一页</button>
</body>
</html>