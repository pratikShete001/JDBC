<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Contact</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String mob = request.getParameter("mobile");
    int age = Integer.parseInt(request.getParameter("age"));
    String city = request.getParameter("city");

    String url = "jdbc:mysql://localhost:3306/demo";
    String username = "root";
    String password = "Pass@123";

    Connection con = null;
    PreparedStatement stat = null;

    String query = "INSERT INTO contact(name,email,mob,age,city) VALUES (?,?,?,?,?)";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, username, password);
        stat = con.prepareStatement(query);

        stat.setString(1, name);
        stat.setString(2, email);
        stat.setString(3, mob);
        stat.setInt(4, age);
        stat.setString(5, city);

        int rows = stat.executeUpdate();
        if(rows > 0){
         
            response.sendRedirect("database.jsp");
        } else {
            out.println("Record not inserted.");
        }
    } catch(Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if(stat != null) stat.close();
        if(con != null) con.close();
    }
%>
</body>
</html>
