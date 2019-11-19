package cn.itcast.jdbc.example;

import java.sql.*;

public class Example03 {

	public static void main(String[] args) {
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/jdbc";
			String username = "root";
			String password = "7246";
			
			conn = DriverManager.getConnection(url,username,password);
			String sql="select * from users";
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			
			ResultSet rs = stmt.executeQuery(sql);
			
			System.out.print("第2条数据的name值为：");
			rs.absolute(2);
			System.out.println(rs.getString("name"));
			
			System.out.print("第1条数据第name值为：");
			rs.beforeFirst();
			rs.next();
			System.out.println(rs.getString("name"));
			
			System.out.print("第4条数据第name值为：");
			rs.afterLast();
			rs.previous();
			System.out.println(rs.getString("name"));			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(stmt!=null) {
				try {
					stmt.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
				stmt = null;
			}
			if(conn!=null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
				conn = null;
			}
		}

	}

}
