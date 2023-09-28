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


<div class="panel panel-default">
  <div class="panel-heading"><h3>Recent Notices</h3></div>
  <div class="panel-body">
		<table class="table">
		<tr style="color:#000000;font-size:15px;">
		
	
		
		
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crt","root","root");
    PreparedStatement prstm=con.prepareStatement("select * from notices");
    ResultSet rs=prstm.executeQuery();
	while(rs.next()){
	%>
	<tr style="color:#000000;font-size:15px;">
		<td><%out.println(rs.getString(2)); %></td>
		
		</tr>
		
	<%	
	}
	
	%>
	</table>	
</div>
</div>

<br/>

<br/>
<br/>

</div>
</body>
</html>