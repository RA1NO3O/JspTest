<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>展示商品信息</title>
</head>
<body>
<%Connection conn = null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	String strConn = "jdbc:mysql://127.0.0.1:3306/shopsystem";
	String strUser = "root";
	String strPassword = "7246";
	conn = DriverManager.getConnection(strConn,strUser,strPassword);
	Statement stmt = conn.createStatement();
	String strSql="SELECT p_id,p_type,p_name,p_price,p_quantity FROM product order by p_time desc limit 5";
	ResultSet rs = stmt.executeQuery(strSql);
%>
<center><h2>最新前5位商品信息</h2></center>
<table border="1" align="center">
	<tr>
		<th>产品编号</th>
		<th>产品类别</th>
		<th>产品名称</th>
		<th>产品单价</th>
		<th>产品数量</th>
	</tr>
	<% while(rs.next()){ %>
	<tr bgcolor="lightblue">
	<td><%=rs.getString("p_id") %></td>
	<td><%=rs.getString("p_type") %></td>
	<td><%=rs.getString("p_name") %></td>
	<td><%=rs.getString("p_price") %></td>
	<td><%=rs.getString("p_quantity") %></td>
	</tr>
	<% } %>
	<% rs.close();
	stmt.close();
	conn.close();
	}catch(ClassNotFoundException e){
	out.println(e.getMessage());
	}catch(SQLException e){
	out.println(e.getMessage());
	}%>
</table>
</body>
</html>