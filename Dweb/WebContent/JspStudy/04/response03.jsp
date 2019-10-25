<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response对象示例03</title>
</head>
<body>
<%
	Cookie mycookie=new Cookie("ra1n","7246");
	mycookie.setMaxAge(3600);
	response.addCookie(mycookie);
%>
</body>
</html>