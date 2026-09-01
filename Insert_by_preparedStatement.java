package com.jdbc;
import java.util.Scanner;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Insert_by_preparedStatement {

	public static void main(String[] args) {
		String url = "jdbc:mysql://localhost:3306/demo";
		String userName = "root";
		String password = "Pass@123";
		String query = "insert into Students (class,id,address,division,name) Values(?,?,?,?,?)";
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
		Scanner sc = new Scanner(System.in);
		
		int id = sc.nextInt();
		String address = sc.nextLine();
		String division = sc.nextLine();
		String name = sc.nextLine();
		sc.close();
		PreparedStatement preparedStatement = connection.prepareStatement(query);
		preparedStatement.setInt(1, 2);
		preparedStatement.setInt(2, id);
		preparedStatement.setString(3, address);
		preparedStatement.setString(4, division);
		preparedStatement.setString(5,name);
		int rowsAffected = preparedStatement.executeUpdate();
		System.out.println(rowsAffected);
		preparedStatement.close();
		connection.close();
		} 
	catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	
}
}
