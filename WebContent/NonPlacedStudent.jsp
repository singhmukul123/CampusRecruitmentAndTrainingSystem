<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel='stylesheet' type='text/css' />

<style type="text/css">
body{
color:#000000;


}

</style>

</head>

<body  >

<%@ include file = "AdminHeader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>




<br/>

<br/>
<br/>
<div class="jumbotron jumbotron-fluid position-relative overlay-bottom" style="margin-bottom: 90px;">
<div class="container text-center my-5 py-5">
<div class="panel panel-default">
  <div class="panel-heading"><h3> Non Placed</h3></div>
  <div class="panel-body">
		<table class="table" > 
		<tr style="color:#000000;font-size:15px;">
		<td>Name</td>
		<td>Contact </td>
		<td>Email</td>
		<td>Passing per</td>
		<td>Year of Passing</td>
		<td>Branch</td>
		<td>Action</td>
		</tr>
		
		
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crt","root","root");
    PreparedStatement prstm=con.prepareStatement("select * from studentdata sd1,profile p where sd1.sid=p.pid");
    ResultSet rs=prstm.executeQuery();
	while(rs.next()){
		
		float marks=Float.parseFloat(rs.getString(10));
		if(marks>60.0){
	%>
	<tr style="color:#000000;font-size:15px;">
		<td><%out.println(rs.getString(2)); %></td>
		<td><%out.println(rs.getString(3)); %></td>
		<td><%out.println(rs.getString(4)); %></td>
		<td><%out.println(rs.getString(5)); %></td>
		<td><%out.println(rs.getString(6)); %></td>
		<td><%out.println(rs.getString(7)); %></td>
		<td><a href="UpdatePlaced.jsp?sid=<%out.println(rs.getString(1)); %>"><input type="submit" value="Mark Placed"></a></td>
		</tr>
		
	<%	
	}
	}
	%>
	</table>	
</div>
</div>
</div>

</body>
</html>