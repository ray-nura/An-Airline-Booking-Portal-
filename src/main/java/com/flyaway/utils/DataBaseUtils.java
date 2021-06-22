package com.flyaway.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseUtils {
	
	public static Connection getConnection() throws SQLException,ClassNotFoundException{
		String driverClassName = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/flyaway_project?useSSL=false"; 
		String user = "root";
		String password= "3306root3306"; 
		//step #1 : load a driver
		Class.forName(driverClassName);
		//step #2 obtain a connection use a DriverManager class
		Connection connection = DriverManager.getConnection(url,user,password);
		return connection;
	}
	

}
