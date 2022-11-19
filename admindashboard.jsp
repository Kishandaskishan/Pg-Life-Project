<%-- 
    Document   : admindashboard
    Created on : 30 Oct, 2022, 7:36:36 AM
    Author     : Amare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%String email=(String)session.getAttribute("adminemail");%>
<!DOCTYPE html>
    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard -pglife</title>
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
<!--            <img src="../images/PG.jpg" alt="Profile" class="rounded-circle">-->

            <span class="d-none d-md-block dropdown-toggle ps-2">Amarendra Sahoo</suserNamepan>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>Amarendra Sahoo</h6>
              <span>Web Designer</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

-->            <li>
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
        <a class="nav-link " href="./adminbooking-log.jsp">
          <i class="bi bi-journal-text"></i>
          <span>Booking-log</span>
        </a>
      </li>
      
       <li class="nav-item">
        <a class="nav-link " href="./adminpglist.jsp">
          <i class="bi bi-journal-text"></i>
          <span>PG Details</span>
        </a>
      </li>
      
      
       <li class="nav-item">
        <a class="nav-link " href="./adminpgownerdetails.jsp">
          <i class="bi bi-journal-text"></i>
          <span>PG Owner details</span>
        </a>
      </li>
      
      
       <li class="nav-item">
        <a class="nav-link " href="./adminuserdetails.jsp">
          <i class="bi bi-journal-text"></i>
          <span>User Details</span>
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


    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Profile</h5>
               Table with stripped rows 
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">Posts</th>
                    <th scope="col">Posts Title</th>
                    <th scope="col">Post Category</th>
                    <th scope="col">Post Date</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Aston Martin Racing Simulator</td>
                        <td>TRENDING</td>
                        <td>2022-07-12 20:31:27</td>
                        <td>
                          <a href="../includes/removepost.php?id=43" class="btn btn-danger">
                            Remove <i class="bi bi-exclamation-octagon"></i>
                          </a>
                        </td>
                      </tr>
                       
                                     
                  
         
                </tbody>
              </table>
               End Table with stripped rows 

            </div>
          </div>

        </div>
      </div>
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