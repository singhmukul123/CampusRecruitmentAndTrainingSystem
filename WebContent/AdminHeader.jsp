<!DOCTYPE html>
<html lang="en">

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
    <!-- Topbar Start -->

    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0 px-lg-5">
            <a href="index.html" class="navbar-brand ml-lg-3">
                <h1 class="m-0 text-uppercase text-primary"><i class="fa fa-book-reader mr-3"></i>CRTS</h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-lg-3" id="navbarCollapse">
                <div class="navbar-nav mx-auto py-0">
                
                
                <%
HttpSession hs=request.getSession();
String role=hs.getAttribute("value").toString();
//if(role.contentEquals("TPO")){
%>
                  <a href='TpoDashboard.jsp' class="nav-item nav-link">Home</a>
                   <div class="nav-item dropdown">
                     <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Placements</a>
                    <div class="dropdown-menu m-0">
                     <a href='PlacedStudent.jsp' class="nav-item nav-link"> Placed Student </a>
                      <a href='NonPlacedStudent.jsp' class="nav-item nav-link">Non Placed </a>
                    </div>
                    </div>
  
                     <div class="nav-item dropdown">
                     <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Eligibility</a>
                    <div class="dropdown-menu m-0">
                     <a href='EligibleStudent.jsp' class="nav-item nav-link">Eligible Student</a>
                        <a href='NonEligibleStudent.jsp' class="nav-item nav-link">Non-Eligible </a>
                    </div>
                    </div>
  
  
  
<a href='MarkAlumini.jsp' class="nav-item nav-link">Alumini</a>
  <a href='AddDrive.jsp' class="nav-item nav-link">Add Drives</a>
  
   <div class="nav-item dropdown">
                     <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Opportunities</a>
                    <div class="dropdown-menu m-0">
                      <a href='AddOpp.jsp' class="nav-item nav-link">Add Opp</a>
                      <br/>
                       <a href='AddTest.jsp' class="nav-item nav-link">Add Test</a>
                    </div>
                    </div>  
  
 
   <a href='AddNotice.jsp' class="nav-item nav-link">Add Notice</a>
     <a href='AllStudent.jsp' class="nav-item nav-link">All Student</a>
     <a href='Graphs.jsp' class="nav-item nav-link">Charts</a>
    <a href='index.jsp' class="nav-item nav-link">LogOut</a>
<%//}%>
                
                
                
                
                    
                </div>
               
            </div>
        </nav>
    </div>

   

   



    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary rounded-0 btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    
   
    
</body>

</html>