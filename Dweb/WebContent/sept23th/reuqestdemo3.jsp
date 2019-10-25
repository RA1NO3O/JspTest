<%@ page language="java" 
		 contentType="text/html; charset=UTF-8"
    	 pageEncoding="UTF-8"
    	 import="java.util.*"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response动态刷新页面</title>
</head>
<body>
<%
	response.setHeader("refresh","2");
	out.println(new Date().toLocaleString());
%>
</body>
</html>