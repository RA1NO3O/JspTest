package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	public  Connection getCon(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://loc alhost:3306/jkxystudent?useUnicode=true&caracterEncoding=utf-8";
			String username="root";
			String password ="7246";
			Connection conn = DriverManager.getConnection (url,username,password);
			System.out.println(conn.getMetaData().getURL());
			return conn;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
