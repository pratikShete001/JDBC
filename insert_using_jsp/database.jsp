<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ page import="java.sql.*" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
				crossorigin="anonymous">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
				crossorigin="anonymous"></script>
			<title>Insert title here</title>
		</head>

		<body>
			<%
			
			try{ Class.forName("com.mysql.cj.jdbc.Driver");
			Statement stmt; ResultSet rs; Connection con;
			String query = "select * from contact";
			String url = "jdbc:mysql://localhost:3306/demo";
		    String username = "root";
		    String password = "Pass@123";
				con=DriverManager.getConnection(url,username,password);
				//out.print("Connection Success..!");
				stmt=con.createStatement();
				rs=stmt.executeQuery(query);
				%>


				<table class="table table-dark table-hover">
					<th>Id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Mobile</th>
					<th>Age</th>
					<th>City</th>

					<% while(rs.next()){ %>

						<tr>
							<td>
								<%=rs.getInt(1) %>
							</td>
							<td>
								<%=rs.getString(2) %>
							</td>
							<td>
								<%=rs.getString(3) %>
							</td>
							<td>
								<%=rs.getString(4) %>
							</td>
							<td>
								<%=rs.getInt(5) %>
							</td>
							<td>
								<%=rs.getString(6) %>
							</td>
						</tr>


						<% } %>
				</table>
				<% }catch(Exception e){ System.out.print(e); } %>
		</body>

		</html>
