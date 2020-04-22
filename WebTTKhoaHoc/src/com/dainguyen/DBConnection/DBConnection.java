package com.dainguyen.DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection CreateConnection() {
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/webttkhoahoc?useUnicode=true&characterEncoding=UTF-8";
		String username="root";
		String password="Ankdai9x";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn= DriverManager.getConnection(url,username,password);
			//System.out.println("Connection Successful !");
			
		} catch (Exception e) {
			System.out.println("Connection failed "+ e);
		}
		return conn;
	}
	

}
