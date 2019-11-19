<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="cn.itcast.jdbc.example.userTable"></jsp:useBean>
	<jsp:useBean id="userservice" class="com.jdbc.service.Userservice"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	<%
		//user.setUsername("aa");
		out.print(user.getUsername());
		out.print(user.getPassword());
		if(userservice.valiUser(user))
			out.print("success");
		else
			out.print("error");
	%>
</body>
</html>