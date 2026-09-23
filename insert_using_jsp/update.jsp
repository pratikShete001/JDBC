<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
				crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int id = Integer.parseInt(request.getParameter("id"));
Statement stmt=null; 
ResultSet rs=null; 
Connection con=null;

String url = "jdbc:mysql://localhost:3306/demo";
String username = "root";
String password = "Pass@123";
try
{ 
	Class.forName("com.mysql.cj.jdbc.Driver");
	String query = "select * from contact where ID ="+id;
	con=DriverManager.getConnection(url,username,password);
	stmt=con.createStatement();
	rs=stmt.executeQuery(query);
	int ID=0;
	String name=null;
	String email = null;
	String mobile = null;
	int age = 0;
	String city = null;
	while(rs.next())
	{
		ID = rs.getInt(1);
		name = rs.getString(2);
		email = rs.getString(3);
		mobile = rs.getString(4);
		age = rs.getInt(5);
		city = rs.getString(6);
	}
%>
<center>
 <div class="card shadow-lg p-4" style="width: 400px;">
    <h3 class="text-center mb-4">Update Information</h3>
    <form action="updateData.jsp" method="post">
      
      <!-- ID -->
      <div class="mb-3">
        <label for="id" class="form-label">ID</label>
        <input value="<%=ID %>" type="text" class="form-control" id="id" name="id" readonly>
      </div>

      <!-- Name -->
      <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input value="<%=name %>" type="text" class="form-control" id="name" name="name" required>
      </div>

      <!-- Email -->
      <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input value="<%=email %>" type="email" class="form-control" id="email" name="email" required>
      </div>

      <!-- Mobile -->
      <div class="mb-3">
        <label for="mobile" class="form-label">Mobile</label>
        <input value="<%=mobile %>" type="tel" class="form-control" id="mobile" name="mobile" 
               pattern="[0-9]{10}" placeholder="10-digit number" required>
      </div>

      <!-- Age -->
      <div class="mb-3">
        <label for="age" class="form-label">Age</label>
        <input value="<%=age %>" type="number" class="form-control" id="age" name="age" min="1" max="120" required>
      </div>

      <!-- City -->
      <div class="mb-3">
        <label for="city" class="form-label">City</label>
        <input value="<%=city %>" type="text" class="form-control" id="city" name="city" required>
      </div>

      <!-- Submit -->
      <div class="d-grid">
        <button value="<%=ID %>" type="submit" class="btn btn-primary">Update</button>
      </div>
    </form>
  </div>
</center>
<%
}
catch(Exception e)
{
	
}
%>
</body>
</html>
