<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息展示页面</title>
</head>
<body>
信息展示页面<br/><br/>
用户名:<%=request.getAttribute("userName") %><br/>
技能:<%=request.getAttribute("skills") %>
</body>
</html>