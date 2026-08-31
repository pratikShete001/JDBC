package com.jdbc;
import java.sql.*;
public class Insert_JDBC 
{
    public static void main(String args[]) {
        String url = "jdbc:mysql://localhost:3306/demo";
        String name = "root";
        String password = "Pass@123";
        String query = "INSERT INTO Students(class,id,address,division,name) VALUES (1,57,'sonai','a','pratik');";
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
                System.out.println("Insert Successful "+rowsAffected+" rose Affected");
            }
            else
            {
                System.out.println("insertion failed");
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
