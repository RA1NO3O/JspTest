<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response对象示例01</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control" , "no-cache");
		response.setIntHeader("Refresh" , 2);
		out.println("date is"+new java.util.Date().toString()+"<br/>");
	%>
</body>
</html>