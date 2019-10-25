<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>处理POST方法传递数据</title>
</head>
<body>
<%
	String strUser=request.getParameter("user");
	String strPass=request.getParameter("pass");
	if(strUser.equals("admin")&&strPass.equals("admin"))
		out.println("<h3>用户登录成功!</h3>");
	else
		out.println("<h3>用户登录失败!</h3>");
%>

</body>
</html>