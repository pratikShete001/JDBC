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
   String id=request.getParameter("id");
   out.print(id);
   PreparedStatement psmt;
   Connection con; 
   try{
 	  Class.forName("com.mysql.cj.jdbc.Driver");
 	  String url="jdbc:mysql://localhost:3306/demo";
 	  String unm="root";
 	  String pwd="Pass@123";
 	con= DriverManager.getConnection(url,unm,pwd); 
 	out.print("Connection Success..!");
 	
 	psmt=con.prepareStatement("delete from contact where id="+id);
 	int i=psmt.executeUpdate();
 	if(i>0){
         response.sendRedirect("database.jsp");
 	}
   }catch(Exception e){
	   System.out.print(e);
   }

%>
</body>
</html>
