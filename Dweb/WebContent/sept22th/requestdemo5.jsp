<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><font size=3>
<% int n=0;
	String strName=request.getParameter("name");
	String strClass=request.getParameter("class");
	String strTemp=strClass+"的"+strName;
	String s1=request.getParameter("t1");
	String s2=request.getParameter("t2");
	if(s1==null){s1="";}
	if(s2==null){s2="";}
	if(s1.equals("b")){n++;}
	if(s2.equals("a")){n++;}
%>
<%=strTemp %>>
<P>您的得分为:<%=n %>分
</font>
	
</body>
</html>