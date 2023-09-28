<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>Edukate - Online Education Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body  style="background-color:#bf2511;">
<div class="jumbotron jumbotron-fluid position-relative overlay-bottom" style="margin-bottom: 10px;">
<div class="container text-center my-5 py-5">
			

<div class="row">

<div class="col-md-12">
<br/>
<br/>
<br/>
<br/>
<div class="panel panel-default">
  <div class="panel-heading"> <h1 style="color:#ffffff">Register Here</h1></div>
  <div class="panel-body">
  
	
			<form method="post">
			
			<input type="text" class="form-control" required placeholder="Enter Student Name" name="ename">
			<br/>
			
			<input type="text" class="form-control" pattern="[0-9]{10}" required placeholder="Enter Student Contact" name="studcontact">
			<br/>
			 <%@ page import="java.sql.*" %>
			 
			<br/>
			<select class="form-control" name="branch">
			<option>Electronics and Telecommunication</option>
			<option>Information Technology</option>
			<option>Computer Science</option>
			<option>Mechanical</option>
			<option>Electrical</option>
			<option>Civil</option>
			</select>
			<br/>
			<input type="email" class="form-control" required placeholder="Enter Student Email" name="studemail">
			<br/>
			<input type="text" class="form-control" required placeholder="Enter Password" name="password">
			<br/>
			Select DOB
			<input type="date" class="form-control" required name="dob">
			<br/>
			<textarea class="form-control" placeholder="Enter Address"  required name="add"></textarea>
			<br/>
			<input type="year" class="form-control" required placeholder="Enter Year of Passing" name="yop">
			<br/>
				<!--<input type="text" required class="form-control" placeholder="Enter Mark Scored" name="mark"> -->
			<br/>
			<input type="submit" name="sub">
			</form>
  </div>
</div>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>

  <%
		      String str1=request.getParameter("sub");
		      
		      if(str1!=null){
		    	  try{
		    	 String ename=request.getParameter("ename");
		    	 String contact=request.getParameter("studcontact");
		    	 String email=request.getParameter("studemail");
		    	 String pass=request.getParameter("password");
		    	 
		    	 String bod=request.getParameter("dob");
		    	 String branch =request.getParameter("branch");
		    	 String add=request.getParameter("add");
		    	 String yop=request.getParameter("yop");
		    	 String mark=request.getParameter("mark");
		    	 Connection con= DriverManager.getConnection("jdbc:mysql://localhost/CRT","root","root");
	             PreparedStatement prst=con.prepareStatement("insert into studentdata(Name,Contact,Email,Pass,dob,branch,addr,yop,marks,role,isplaced) values(?,?,?,?,?,?,?,?,?,?,?) ");
	             prst.setString(1,ename);
	             prst.setString(2, contact);
	             prst.setString(3,email);
	             prst.setString(4, pass);
	             prst.setString(5, bod);
	             prst.setString(6, branch);
	             prst.setString(7, add);
	             prst.setString(8, yop);
	             prst.setString(9, mark);
	             prst.setString(10, "Student");
	             prst.setString(11, "0");
	             prst.executeUpdate();
		     %>
		     <script>
		     
		     alert("Student Added Sucessfully");
		     window.location="index.jsp"
		     
		     </script>
		     
		     <% 
		     
		      }catch(Exception e){
		    	  out.println(""+e);
		      }
		      }
		      %>


</div>
</div>

</div>


</div>

</body>
</html>