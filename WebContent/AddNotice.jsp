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

<%@ include file = "AdminHeader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>


 <div class="jumbotron jumbotron-fluid position-relative overlay-bottom" style="margin-bottom: 90px;">
        <div class="container text-center my-5 py-5">

<br/>
<div class="row">
<div class="col-md-6"> <b>Welcome ! <%out.println("TPO"); %> </b></div>
<div class="col-md-6">
</div>
</div>
      <form method="post">
			
			
			<textarea class="form-control" name="jd" placeholder="Enter JOB Description" style="height:200px;"></textarea>
			<br/>
			<input type="submit" name="sub">
			</form>
			
<%@ page import="java.sql.*" %>
		      <%
		      String str1=request.getParameter("sub");
		      
		      if(str1!=null){
		    	  try{
		         Class.forName("com.mysql.jdbc.Driver");
	             Connection con= DriverManager.getConnection("jdbc:mysql://localhost/CRT","root","root");
	             PreparedStatement prst=con.prepareStatement("insert into notices(Notice) values(?)");
	        
	             prst.setString(1, request.getParameter("jd"));
	             prst.executeUpdate();
		     %>
		     <script>
		     
		     alert("Notice Added Sucessfully");
		
		     
		     </script>
		     
		     <% 
		     
		      }catch(Exception e){
		    	  out.println(""+e);
		      }
		      }
		      %>
			
<br/>
<br/>

</div>
</body>
</html>