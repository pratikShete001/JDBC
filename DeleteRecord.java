package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DeleteRecord {

	public static void main(String[] args) {
		String url = "jdbc:mysql://localhost:3306/demo";
        String name = "root";
        String password = "Pass@123";
        String query = "DELETE FROM Students WHERE ID = 55";
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        try
        {
            Connection connection = DriverManager.getConnection(url, name, password);
            Statement statement = connection.createStatement();  
            int rowsAffected = statement.executeUpdate(query);// statement query execute query
            if(rowsAffected > 0)
            { 
                System.out.println("Deleation Successful "+rowsAffected+" rose Affected");
            }
            else
            {
                System.out.println("Deleation failed");
            }
            connection.close();
            statement.close();
        } 
        catch (SQLException e) 
        {
            System.out.println(e.getMessage());
        }
	}

}
