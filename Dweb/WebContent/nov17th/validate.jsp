<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.jkxy.model.userTable"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="com.jkxy.model.userTable"></jsp:useBean>
	<jsp:useBean id="userservice" class="com.jkxy.service.Userservice"></jsp:useBean>
	<jsp:setProperty property="*" name="user" />
	<%
		//user.setUsername("aa");
		out.print(user.getUsername());
		out.print(user.getPassword());
		if(userservice.valiUser(user))
			{
			session.setAttribute("user",user);
			%>
			<jsp:forward page="main.jsp"></jsp:forward>
	<%
			}
		else
		{%>
		<jsp:forward page="index.jsp"></jsp:forward>
<%
		}
	%>
</body>
</html>