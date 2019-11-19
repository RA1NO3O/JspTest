package com.jdbc.service;
import cn.itcast.jdbc.example.userTable;
import java.sql.*;
public class Userservice {
	private Connection conn;
	private PreparedStatement pstmt;
	public Userservice(){
		conn=new cn.itcast.jdbc.example.Conn().getCon();
		
	}
	public boolean valiUser(userTable user) {
		try {
		pstmt=conn.prepareStatement("select * from usertable where username=? and password=?");
		pstmt.setString(1, user.getUsername());
		pstmt.setString(2, user.getPassword());
		ResultSet rs = pstmt.executeQuery();
		if(rs.next())
			return true;
		else
			return false;
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
