<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
</head>
<body  >
<%@ include file = "StudentHeader.jsp" %>
<div class="jumbotron jumbotron-fluid position-relative overlay-bottom" style="margin-bottom: 90px;">
<div class="container text-center my-5 py-5">

<div class="row">

<div class="col-md-12">
<br/>
<br/>
<br/>
<br/>
<div class="panel panel-default">
  <div class="panel-heading">Update Profile</div>
  <div class="panel-body">
  
	
			<form method="post">
			
			<input type="text" class="form-control" placeholder="Enter 10th  Percentage" name="tenth">
			<br/>
			<input type="text" class="form-control" placeholder="Enter 10th  Passout" name="tenthpass">
			<br/>
			<input type="text" class="form-control" placeholder="Enter School Name " name="scname">
			<br/>
			<input type="text" class="form-control" placeholder="Enter 12th or Diploma Percentage" name="twelth">
			<br/>
			<input type="text" class="form-control" placeholder="Enter 12th Passout" name="twelthpass">
			<br/>
			<input type="text" class="form-control" placeholder="Enter College Name" name="cname">
			<br/>
			<br/>
			 <%@ page import="java.sql.*" %>
		
			<textarea placeholder="Enter Project Details" class="form-control" name="project"></textarea>
			<br/>
			<textarea placeholder="Enter Courses and Certification Details" class="form-control" name="course"></textarea>
			<br/>
			<textarea placeholder="Enter Skills" class="form-control" name="skills"></textarea>
			<br/>
				<textarea placeholder="Enter Hobbies" class="form-control" name="hobby"></textarea>
			<br/>
			<textarea placeholder="Enter Extracuriculam Activities" class="form-control" name="extra"></textarea>
			<br/>
			<br/>
			Select Resume
			<input type="file">
			Select Certificate
			<input type="file">
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

		    	HttpSession hs1=request.getSession();	  
		    		  
		    	 Connection con= DriverManager.getConnection("jdbc:mysql://localhost/CRT","root","root");
	             PreparedStatement prst=con.prepareStatement("insert into profile(studid,tenthper,tenthpass,scname,twelth,twelthpass,clname,project,course,skill,hobby,curriculam) values(?,?,?,?,?,?,?,?,?,?,?,?) ");
	             prst.setString(1,""+hs1.getAttribute("uid").toString());
	             prst.setString(2, request.getParameter("tenth"));
	             prst.setString(3,request.getParameter("tenthpass"));
	             prst.setString(4,request.getParameter("scname"));
	             prst.setString(5, request.getParameter("twelth"));
	             prst.setString(6, request.getParameter("twelthpass"));
	             prst.setString(7, request.getParameter("cname"));
	             prst.setString(8, request.getParameter("project"));
	             prst.setString(9, request.getParameter("course"));
	             prst.setString(10, request.getParameter("skills"));
	             prst.setString(11, request.getParameter("hobby"));
	             prst.setString(12, request.getParameter("extra"));
	             prst.executeUpdate();
		     %>
		     <script>
		     
		     alert("Profile Created  Sucessfully");
		    // window.location="index.jsp"
		     
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