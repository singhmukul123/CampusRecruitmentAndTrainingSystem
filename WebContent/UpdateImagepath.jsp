<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	  <%@ page import="java.sql.*" %>
<%

HttpSession hs=request.getSession();
String prptitle=hs.getAttribute("target").toString();
String id=hs.getAttribute("uid").toString();
String doctitle= hs.getAttribute("title").toString();
try{
	
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost/crt","root","root");
PreparedStatement prst=con.prepareStatement("insert into docs(uid,doc,DocTitle)values(?,?,?)");
prst.setString(1, id);
prst.setString(2,prptitle);
prst.setString(3,doctitle);
prst.executeUpdate();

}catch(Exception e){
	out.println(""+e);
}


%>
<script>
alert("File Uploaded Sucessfully");
window.location="StudentDashboard.jsp"
</script>
</body>
</html>