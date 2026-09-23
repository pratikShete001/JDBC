<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String city = request.getParameter("city");
int age = Integer.parseInt(request.getParameter("age"));

Connection con = null;
PreparedStatement stat = null;

String url = "jdbc:mysql://localhost:3306/demo";
String username = "root";
String password = "Pass@123";



String query = "update contact set name=?,email=?,mob=?,age=?,city=? where id = "+id;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection(url, username, password);
    stat = con.prepareStatement(query);

    stat.setString(1, name);
    stat.setString(2, email);
    stat.setString(3, mobile);
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
