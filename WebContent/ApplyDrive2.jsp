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



<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>


  
			
<%@ page import="java.sql.*" %>
		      <%
		     
		   
		    	  try{
		    		  
		    		  String str12=request.getParameter("cname");
		    		  HttpSession hs11=request.getSession();
		    		  String uid=hs11.getAttribute("uid").toString();
		    		  String name=hs11.getAttribute("uname").toString();
		    		  String contact=hs11.getAttribute("contact").toString();
		    		  
		    		    Class.forName("com.mysql.jdbc.Driver");
		    			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crt","root","root");
		    		    PreparedStatement prstm=con.prepareStatement("insert into capplicant(cname,DDate,Joblocation,sid,Studname,StudContact)values(?,?,?,?,?,?)");
		    		    prstm.setString(1, request.getParameter("cname"));
		    		    prstm.setString(2, request.getParameter("date"));
		    		    prstm.setString(3, request.getParameter("loc"));
		    		    prstm.setString(4, uid);
		    		    prstm.setString(5, name);
		    		    prstm.setString(6, contact);
		    		    prstm.executeUpdate();
		    		 // response.sendRedirect("UploadImage1.jsp");
		        
		     %>
		     <script>
		     
		     alert("Applied For Drive Sucessfully");
		     window.location="ApplyDrive.jsp";
		     
		     </script>
		     
		     <% 
		     
		      }catch(Exception e){
		    	  out.println(""+e);
		      }
		      
		      %>
			
<br/>
<br/>

</div>
</body>
</html>