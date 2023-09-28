<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
</head>

<body >

<%@ include file = "StudentHeader.jsp" %>
<div class="jumbotron jumbotron-fluid position-relative overlay-bottom" style="margin-bottom: 90px;">
<div class="container text-center my-5 py-5">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>




<br/>
<div class="row">
<%@ page import="java.sql.*" %>
<div class="col-md-6"> <b>Welcome ! <%out.println("Admin"); %> </b></div>
<div class="col-md-6">
</div>
</div>
<div class="panel panel-default">
  <div class="panel-heading"><h3> Apply Drive</h3></div>
  <div class="panel-body">
		<table class="table">
		<tr style="color:#000000;font-size:15px;">
		<td>Company</td>
		<td>DDate</td>
		<td>Job Location</td>
		<td>Job Title</td>
		<td>Package</td>
		<td>Description</td>
		<td>Action</td>
		</tr>
		
		
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crt","root","root");
    PreparedStatement prstm=con.prepareStatement("select * from drives");
    ResultSet rs=prstm.executeQuery();
	while(rs.next()){
	%>
	<tr style="color:#000000;font-size:15px;">
		<td><%out.println(rs.getString(2)); %></td>
		<td><%out.println(rs.getString(3)); %></td>
		<td><%out.println(rs.getString(4)); %></td>
		<td><%out.println(rs.getString(5)); %></td>
		<td><%out.println(rs.getString(6)); %></td>
		<td><%out.println(rs.getString(7)); %></td>
		<td><a href="ApplyDrive2.jsp?cname=<%out.println(rs.getString(2)); %>&date=<%out.println(rs.getString(3)); %>&loc=<%out.println(rs.getString(4)); %>"><input type="submit" value="Apply"></a></td>
		</tr>
		
	<%	
	}
	
	%>
	</table>	
</div>
</div>
<br/>
<br/>

</div>
</body>
</html>