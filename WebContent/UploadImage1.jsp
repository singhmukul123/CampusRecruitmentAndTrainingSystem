<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>View Enquiries</title>
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

  <body>

   <div class="jumbotron jumbotron-fluid position-relative overlay-bottom" style="margin-bottom: 90px;">
        <div class="container text-center my-5 py-5">

<%
HttpSession hs=request.getSession();
hs.setAttribute("id",""+request.getParameter("id"));
%>
            <header>
     <center> <h3 style="color:#ffffff;">Upload Document Here</h3></center>
    </header>
<form action="UploadImage2.jsp" method="post"
                        enctype="multipart/form-data">
   <input type="hidden" name="id" value="<%out.println(request.getParameter("id"));%>">
<br/>                  
<input type="file" name="file" size="50" />
<br/><br/>
<input type="submit" value="Upload File" />
</form>
<br/><br/><br/><br/><br/><br/>
</div>
  </div>
</div>
    </main>
  </body>
</html>





<%


%>
 

</body>
</html> 
