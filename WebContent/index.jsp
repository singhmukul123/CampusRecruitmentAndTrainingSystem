<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>CRTS - Online training and placement Website</title>
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

<body >

<div class="jumbotron jumbotron-fluid position-relative overlay-bottom" style="margin-bottom: 90px;">
<div class="container text-center my-5 py-5">
			
			<div class="row">
		
		<div class="col-md-10">
<h1></h1>	
	<br/>	
		</div>
	<div class="col-md-2">
		
		</div>
		</div>	
	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper" >
			<div class="main-page">
			
			<br/>
			<br/>
		      <div class="row">
		     <div class="col-md-4">
		  
		     
		     </div>
		    
		      <div class="col-md-4">
		 
		 <br/><br/><br/>
		
		  <div class="panel panel-default" >
               <div class="panel-body">
                <h1 style="color:#ffffff">Welcome to CRT</h1>
               <hr>
		     <form method="post"> 
		     <input type="text" placeholder="Enter Username" name="email" class="form-control" required>
		     <br/>
		     <input type="password" placeholder="Enter Password" name="pass" class="form-control" required>
		     
		    <br/>
		    <br/>
		     <input type="submit" value="Login" name="submit">
		     <br/><br/>
		  <a href="NewRegistration.jsp" style="color:#ffffff;">New Registration</a>
		     </form>
		     </div>
		     </div>
		 
		 
		 
		 
		 <%@ page import="java.sql.*" %>
                  <br/>
<%
boolean isadmin=true;
String btnclck=request.getParameter("submit");
if(btnclck!=null)
{
	String uid="";
	String uname="";
try{

       HttpSession hs=request.getSession();
    	if(request.getParameter("email").trim().contentEquals("tpo@gmail.com")&&request.getParameter("pass").trim().contentEquals("tpo")){
    		response.sendRedirect("TpoDashboard.jsp");
    		hs.setAttribute("value", "TPO");
    	}else if(request.getParameter("email").trim().contentEquals("student@gmail.com")&&request.getParameter("pass").trim().contentEquals("student")) {
    		hs.setAttribute("value", "student");
    		response.sendRedirect("StudentDashboard.jsp");
    		
    	}else{	
    		
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/CRT","root","root");
    	    PreparedStatement prstm=con.prepareStatement("select * from studentdata where Email=? and Pass=?");
    	    prstm.setString(1, request.getParameter("email"));
    	    prstm.setString(2, request.getParameter("pass"));
    	    ResultSet rs=prstm.executeQuery();
    	    
    	    boolean status=false;
    	    String contact="";
    	    while(rs.next()){
    	    	
    	    	uid=rs.getString(1);
    	    	uname=rs.getString(2);
    	    	contact=rs.getString(3);
    	    	status=true;
    	    }
    	
    	    if(status){
    	    	
    	    	
    	    	
    	    	hs.setAttribute("uid", uid);
    	    	hs.setAttribute("uname", uname);
    	    	hs.setAttribute("contact", contact);
    	    	hs.setAttribute("value", "student");
    	    	response.sendRedirect("StudentDashboard.jsp");
    	    
    		%>
    		<script>
    		alert("Invalid Username or Password")
    		</script>
    		
    	<% 
    	
    }
    	}
    

}catch(Exception e){
	out.println(""+e);
}
}
  %>
		 
		 
		 
		 
		 
		 
		 
		 
		 
		      
		      </div>
		      <div class="col-md-4">
		      </div>
		      
		      </div>
				<!--//row-->
			
	</div>

	
</body>
</html>