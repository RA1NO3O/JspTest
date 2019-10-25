<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page buffer="10kb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("A");
	out.print("B");
	out.newLine();
	out.println("<br>");
	//out.flush();
	//out.clear();
	out.clearBuffer();
	out.println("获取当前缓冲区大小:"+out.getBufferSize());
	out.println("<br>");
	out.println("当前缓冲区剩余字节数目:"+out.getRemaining());
%>
</body>
</html>