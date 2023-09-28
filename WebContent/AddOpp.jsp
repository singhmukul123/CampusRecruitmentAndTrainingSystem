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
<%@ include file = "AdminHeader.jsp" %>
    <div class="jumbotron jumbotron-fluid position-relative overlay-bottom" style="margin-bottom: 90px;">
        <div class="container text-center my-5 py-5">


<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<br/>

      <form method="post">
			
			<input type="text" class="form-control" placeholder="Enter Company Name" name="cname">
			<br/>
			Select Drive Date
			<input type="date" class="form-control" placeholder="Company Domain" name="date">
			<br/>
			<input type="text" class="form-control" placeholder="Enter JOB Location" name="jlocation">
			<br/>
			<input type="text" class="form-control" placeholder="Enter Job Title" name="jtitle">
			<br/>
			<input type="text" class="form-control" placeholder="Enter Package" name="package">
			<br/>
			<textarea class="form-control" name="jd" placeholder="Enter JOB Description"></textarea>
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
	             PreparedStatement prst=con.prepareStatement("insert into opportunities(company,DDate,Jlocation,Jtitle,Package,Jd) values(?,?,?,?,?,?)");
	             prst.setString(1,request.getParameter("cname"));
	             prst.setString(2,request.getParameter("date"));
	             prst.setString(3,request.getParameter("jlocation"));
	             prst.setString(4, request.getParameter("jtitle"));
	             prst.setString(5, request.getParameter("package"));
	             prst.setString(6, request.getParameter("jd"));
	             prst.executeUpdate();
		     %>
		     <script>
		     
		     alert("Company Added Sucessfully");
		
		     
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