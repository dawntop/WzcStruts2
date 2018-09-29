<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>Hello World</title>
</head>
<body>
   Hello <s:property value="name"/> ! <br/>
   
   Entered value : <s:property value="name"/><br/>
   Value of key 1 : <s:property value="key1" /><br/>
   Value of key 2 : <s:property value="key2" /> <br/>
   
   <br/>
   <br/>
   
	<b>Example of If and Else</b>	<br />
	<s:if test="name=='Mike'">
   		You have selected 'Mike'. 
	</s:if>
	<s:elseif test="name=='Jason'">
   		You have selected 'Jason'
	</s:elseif>
	<s:else>
   		You have not selected 'Mike' or 'Jason'.
	</s:else>

</body>
</html>