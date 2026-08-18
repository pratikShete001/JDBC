package com.jdbc;
import java.sql.*;

public class InsertQuery {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        final String INSERT_QUERY = 
            "INSERT INTO students (class, id, address, division, name) " +
            "VALUES (6, 4, 'sonai', 'A', 'prasad')";

        // Step 1: Load & register driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Step 2: Connection
        String url = "jdbc:mysql://localhost:3306/demo"; // demo = your database name
        String username = "root";
        String password = "Pass@123";

        Connection con = DriverManager.getConnection(url, username, password);

        // Step 3: Statement object
        Statement st = con.createStatement();

        // Step 4: Execute query
        int rows = st.executeUpdate(INSERT_QUERY); // returns number of rows affected

        // Step 5: Process result
        System.out.println(rows + " row(s) inserted.");

        // Step 6: Close connection
        con.close();
    }
}
