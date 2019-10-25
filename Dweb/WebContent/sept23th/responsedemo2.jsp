<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response对象的setContentType方法演示</title>
</head>
<body>
<%
	String address=request.getParameter("where");
	if(address!=null){
		if(address.equals("163"))
			response.sendRedirect("http://www.163.com");
		else if(address.equals("zjbti"))
			response.sendRedirect("http://www.zjbti.net.cn");
	}
%>
<b>友情链接</b><br>
	<form action="goto.jsp" method="get">
		<select name="where">
			<option value="163" selected>网易
			<option value="zjbti">工商学院
			<option value="SUN">SUN
		</select>
<input type="submit" value="go">
	</form>
</body>
</html>