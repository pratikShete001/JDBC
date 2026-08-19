package com.jdbc;
import java.sql.*;
import java.util.Scanner;
public class InsertUserInput {

	public static void main(String[] args)throws ClassNotFoundException, SQLException {
		
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter a Class");
		int classNo = sc.nextInt();
		
		System.out.println("Enter a id");
		int id = sc.nextInt();
		
		System.out.println("Enter a address");
		String address = sc.next();
		
		System.out.println("Enter a division");
		String division = sc.next();
		
		System.out.println("Enter a name");
		String name = sc.next();
		
		final String INSERT_QUERY = 
			    "INSERT INTO students (`class`, `id`, `address`, `division`, `name`) " +
			    "VALUES ("+classNo+", "+id+", '"+address+"', '"+division+"', '"+name+"')";// use quotes properly
		
			        
        String url = "jdbc:mysql://localhost:3306/demo"; // demo = your database name
        String username = "root";
        String password = "Pass@123";

        Connection con = DriverManager.getConnection(url, username, password);

        Statement st = con.createStatement();

        int rows = st.executeUpdate(INSERT_QUERY); // returns number of rows affected

        System.out.println(rows + " row(s) inserted.");

        con.close();
	}

}
