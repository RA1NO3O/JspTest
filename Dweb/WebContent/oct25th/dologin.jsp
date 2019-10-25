<%@ page language="java" import="java.util.*,java.net.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//Serverlet Part
String[] isUseCookies=request.getParameterValues("isUseCookie");
String username = request.getParameter("username");
String password = request.getParameter("password");
Cookie uname=new Cookie("UserName",username);
Cookie pwd=new Cookie("Password",password);
uname.setMaxAge(60*60*24*10);	//设置10天的Cookie寿命  
pwd.setMaxAge(60*60*24*10);	//设置10天的Cookie寿命
response.addCookie(uname);
response.addCookie(pwd);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dologin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h1>登录成功</h1>
    <hr>
    <br>
    <br>
    <br>
    
    <a href="CookieDemo/users.jsp" target="_blank">查看用户信息</a>
    
  </body>
</html>