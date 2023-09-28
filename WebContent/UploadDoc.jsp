<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
</head>

<body  style="background-color:#ffffff;">
<%@ include file = "StudentHeader.jsp" %>
    <div class="jumbotron jumbotron-fluid position-relative overlay-bottom" style="margin-bottom: 90px;">
        <div class="container text-center my-5 py-5">


<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<br/>

      <form method="post">
			
			<input type="text" class="form-control" placeholder="Enter Document Title" name="cname">
			<br/>
			
			<input type="submit" name="sub">
			</form>
			
<%@ page import="java.sql.*" %>
		      <%
		      String str1=request.getParameter("sub");
		      
		      if(str1!=null){
		    	  try{
		    		  
		    		  String str12=request.getParameter("cname");
		    		  HttpSession hs11=request.getSession();
		    		  hs.setAttribute("title", str12);
		    		  response.sendRedirect("UploadImage1.jsp");
		        
		     %>
		     <script>
		     
		    // alert("Company Added Sucessfully");
		
		     
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