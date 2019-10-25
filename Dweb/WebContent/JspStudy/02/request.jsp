<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request对象示例</title>
</head>
<body>
	<form action="" method="post">
		<input type="text" name="username">
		<input type="submit" name="提交">
	</form>
	请求方法名:<%=request.getMethod() %><br/>
	请求的资源:<%=request.getRequestURI() %><br/>
	请求所使用的协议:<%=request.getProtocol() %><br/>
	请求的服务器名:<%=request.getServerName() %><br/>
	请求的服务器端口:<%=request.getServerPort() %><br/>
	客户端的IP地址:<%=request.getRemoteAddr() %><br/>
	客户端的主机名<%=request.getRemoteHost() %><br/>
	表单提交来的值<%=request.getParameter("username") %><br/>
</body>
</html>