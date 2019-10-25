<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<%
	Connection conn=null;
	try{
	Class.forName("com.mysql.jdbc.Driver");
	String strConn="jdbc:mysql://127.0.0.1:3306/test";
	String strUser="root";
	String strPassword="";
	conn=DriverManager.getConnection(strConn,strUser,strPassword);
	}catch(ClassNotFoundException e){
		out.println("a"+e.getMessage());
	}catch(SQLException e){
		out.println(e.getMessage());
	}finally{
		try{
			if(conn!=null){conn.close();}
		}catch(Exception e){e.printStackTrace();}
	}
%>
</html>