<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- 
    Document   : pgownerdashboard
    Created on : 25 Oct, 2022, 1:52:48 PM
    Author     : Amare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
String email=(String)session.getAttribute("pgowneremail");  
out.print(email);

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pglife?useSSL=false", "root", "root");
    Statement statement = conn.createStatement() ;
    ResultSet resultset = statement.executeQuery("select * from pgowner_registration WHERE Email='"+email+"'") ;
    resultset.next();
                
    resultset.getString(2);
    resultset.getString(6);
    
//    if(request.getParameter("addroom") != null){
//        String name = request.getParameter("name");
//        String details = request.getParameter("address");
//        String price = request.getParameter("price");
//        String city = request.getParameter("city");
//        String ownername = resultset.getString(2);
//        String Mobile = resultset.getString(6);
//        String image = "photo.jpg";
//        
//        
//        out.println(name);
//        out.println(details);
//        out.println(price);
//        out.println(city);
//        out.println(image);
//        out.println(ownername);
//        out.println(Mobile);
//        out.println(email);
//        
//        
//        int i=statement.executeUpdate("INSERT INTO pglist(city, price, pgname, pgdetails,ownername, owneremail, ownermobile) values('"+city+"','"+price+"','"+name+"','"+details+"','"+ownername+"','"+email+"','"+Mobile+"')");
//            out.println("Data is successfully inserted!");
//            out.println(i);
//            if(i == 1){
//                out.print("Inserted to database");
//            }
//            else{
//                out.println("Data is not inserted!");
//            }
//    }


%>
    

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Pgowner Dashboard</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

 
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="images/logo.png" alt="pg" >
        <span class="d-none d-lg-block"></span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->


    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">




        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
<!--           <img src="../images/PG.jpg" alt="Profile" class="rounded-circle">-->

            <span class="d-none d-md-block dropdown-toggle ps-2"><%=email%></suserNamepan>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6><%=email%></h6>
              <span>Web Designer</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            

            <li>
              <a class="dropdown-item d-flex align-items-center" href="signout.jsp">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="index.html">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li>

      
      
       <li class="nav-item">
        <a class="nav-link " href="./pgownerbooking-log.jsp">
          <i class="bi bi-journal-text"></i>
          <span>Booking-log</span>
        </a>
      </li>
        
         <li class="nav-item">
        <a class="nav-link " href="./pgownerpglist.jsp">
          <i class="bi bi-journal-text"></i>
          <span>Pg list</span>
        </a>
      </li>

      
      
       <li class="nav-item">
        <a class="nav-link " href="./pgownerdashboard.jsp">
          <i class="bi bi-journal-text"></i>
          <span>Add pg</span>
        </a>
      </li>

    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->


    <section class="section dashboard">
      

      <form action="./addpg.jsp" method="post" >
          
          
        <div class="row mb-3">
          <label for="inputText" class="col-sm-2 col-form-label">Name</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" name="name" required>
            </div>
        </div>
          
          <div class="row mb-3">
          <label for="inputText" class="col-sm-2 col-form-label"> Details About PG</label>
            <div class="col-sm-10">
              <textarea class="tinymce-editor" name="address" required>
               
              </textarea>
            </div>
        </div>
          
       
          
          <div class="row mb-3">
          <label for="inputText" class="col-sm-2 col-form-label">price</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" name="price" required>
            </div>
        </div>
          
          
          
        
          
          
          
          <div class="col-lg">

          

          <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">City</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="city">
                      
                        <option value="Bhubaneswar">Bhubaneswar</option>
                        <option value="cuttack">Cuttack</option>
                        <option value="Sambalpur">Sambalpur</option>
                        <option value="Rourkela">Rourkela</option>
                        
                        
                    </select>
                  </div>
            </div>
              
              
              

        </div>

<input type="hidden" class="form-control" name="oname" value="<%=resultset.getString(2)%>" required>
        <input type="hidden" class="form-control" name="email" value="<%=resultset.getString(3)%>" required>
        <input type="hidden" class="form-control" name="mobile" value="<%=resultset.getString(6)%>" required>

        <div class="row mb-3">
          <label class="col-sm-2 col-form-label">Add pg</label>
          <div class="col-sm-10">
            <button type="submit" class="btn btn-primary" name="addroom">Add pg</button>
          </div>
        </div>


      </form>

    </section>

  </main> End #main 

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>PG Life</span></strong>. All Rights Reserved
    </div>

  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  
</body>

</html>