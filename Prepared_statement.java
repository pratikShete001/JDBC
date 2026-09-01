package com.jdbc;
import java.sql.*;

public class Prepared_statement {
	public static void main(String[] args) {
		String url = "jdbc:mysql://localhost:3306/demo";
		String userName = "root";
		String password = "Pass@123";
		String query = "select * from Students WHERE name = ? AND id = ?";
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		}
		catch(ClassNotFoundException e)
		{
			System.out.println(e.getMessage());
		}
		try
		{
		Connection connection = DriverManager.getConnection(url,userName,password);
		PreparedStatement preparedStatement = connection.prepareStatement(query);
		preparedStatement.setString(1, "vaibhav");
		preparedStatement.setString(2, "54");
		ResultSet resultSet = preparedStatement.executeQuery();
		
		while(resultSet.next())
		{
			int id = resultSet.getInt("id");
			int class_name = resultSet.getInt("class");
			String address = resultSet.getString("address");
			String division = resultSet.getString("division");
			String name = resultSet.getString("name");
			
			System.out.println("ID: "+id);
			System.out.println("Name: "+name);
			System.out.println("Address: "+address);
			System.out.println("Division: "+division);
		}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}
}
