package com.jdbc;

import java.sql.*;

public class SelectStatement {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        // Step 1: Load & register driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Step 2: Connection with DB
        String url = "jdbc:mysql://localhost:3306/demo";
        String username = "root";
        String password = "Pass@123";

        Connection con = DriverManager.getConnection(url, username, password);

        // Step 3: Statement object
        Statement st = con.createStatement();

        // Step 4: Execute query (use correct table name)
        ResultSet rs = st.executeQuery("SELECT * FROM students");

        // Step 5: Process result
        while (rs.next()) {
            System.out.println(
                rs.getInt("class") + " " +
                rs.getInt("id") + " " +
                rs.getString("address") + " " +
                rs.getString("division") + " " +
                rs.getString("name")
            );
        }

        // Step 6: Close connection
        con.close();
    }
}
