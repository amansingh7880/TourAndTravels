package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DB {

	public static void main(String[] args) {
		DB.getConnect();
	}
	
	public static Connection getConnect()
	{
		Connection conn=null;
		Statement stmt=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","1234");
			System.out.println("Connected");
			/*Statement stmt=con.createStatement();
			//ResultSet rs=stmt.executeQuery()
			stmt.executeUpdate("INSERT INTO  " +
                   "VALUES ()";)*/
			
		}catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e);
		}return conn;
	}

}
