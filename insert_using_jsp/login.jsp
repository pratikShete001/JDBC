<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<%
String email = request.getParameter("email");
String pwd = request.getParameter("pwd");

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

String url = "jdbc:mysql://localhost:3306/demo";
String username = "root";
String password = "Pass@123";

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection(url, username, password);

    String query = "SELECT * FROM reg WHERE email=? AND pwd=?";
    ps = con.prepareStatement(query);
    ps.setString(1, email);
    ps.setString(2, pwd);
	out.print("connection successful");
    rs = ps.executeQuery();

    if(rs.next()) {
        response.sendRedirect("database.jsp");
    } else {
        response.sendRedirect("login.html");
    }
} catch(Exception e) {
    e.printStackTrace();
}
%>
</body>
</html>
