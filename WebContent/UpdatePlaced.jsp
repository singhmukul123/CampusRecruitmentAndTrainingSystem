<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<body >

    
<%@ page import="java.sql.*" %>
		      <%
		     
		    	  try{
		         Class.forName("com.mysql.jdbc.Driver");
	             Connection con= DriverManager.getConnection("jdbc:mysql://localhost/CRT","root","root");
	             PreparedStatement prst=con.prepareStatement("update studentdata set isplaced=? where sid=?");
	             prst.setString(1, "1");
	             prst.setString(2, request.getParameter("sid"));
	             prst.executeUpdate();
		     %>
		     <script>
		     
		     alert("Updated to Placed");
		     window.location="NonPlacedStudent.jsp";
		     
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