<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel='stylesheet' type='text/css' />

<style type="text/css">
body{
color:#000000;


}

</style>

</head>

<body  >

<%@ include file = "AdminHeader.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>




<div class="jumbotron jumbotron-fluid position-relative overlay-bottom" style="margin-bottom: 90px;">
<div class="container text-center my-5 py-5">
<div class="panel panel-default">
  <div class="panel-heading"><h3> Graphical Representation</h3></div>
  <div class="panel-body">	
	<%
	int place=0;
	int nonplaced=0;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crt","root","root");
    PreparedStatement prstm=con.prepareStatement("select * from studentdata");
    ResultSet rs=prstm.executeQuery();
	while(rs.next()){
		
		if(rs.getString(11).contentEquals("1")){
			place=place+1;
		}else{
			nonplaced=nonplaced+1;
		}
	
	
	}
	%>
	
	
	
	  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['results', 'Count'],
          ['Placed',     <%out.println(place); %>],
          ['Non Placed',  <%out.println(nonplaced); %>]
         
        ]);

        var options = {
          title: 'Placements',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(data, options);
      }
    </script>
	 <div id="piechart_3d" style="width: 900px; height: 500px;"></div>
</div>
</div>
</div>

</body>
</html>