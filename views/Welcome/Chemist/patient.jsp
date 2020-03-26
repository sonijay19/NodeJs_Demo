<!--
=========================================================
 Light Bootstrap Dashboard - v2.0.1
=========================================================

 Product Page: https://www.creative-tim.com/product/light-bootstrap-dashboard
 Copyright 2019 Creative Tim (https://www.creative-tim.com)
 Licensed under MIT (https://github.com/creativetimofficial/light-bootstrap-dashboard/blob/master/LICENSE)

 Coded by Creative Tim

=========================================================

 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.  -->
 <!DOCTYPE html>
 <html lang="en">
 
 <head>
     <meta charset="utf-8" />
     <link href="../../img/health.png" rel="icon">
     <link href="../../img/health.png" rel="apple-touch-icon">
     <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
     <title>HealthCard - patient details</title>
     <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
     <!--     Fonts and icons     -->
     <link href="https://fonts.googleapis.com/css?wfamily=Montserrat:400,700,200" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
     <!-- CSS Files -->
     <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
     <link href="../assets/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
     <!-- CSS Just for demo purpose, don't include it in your project -->
     <link href="../assets/css/demo.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 </head>
 
 <body>
     <div class="wrapper">
         <div class="sidebar" data-image="../assets/img/medicine1.jpg" data-color="black">
             <!--
         Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"
 
         Tip 2: you can also add an image using data-image tag
     -->
             <div class="sidebar-wrapper">
                 <div class="logo">
                     <a href="../../index.html" class="simple-text">
                        HEALTH INFO
                     </a>
                 </div>
                 <ul class="nav">
                     
                     <li>
                         <a class="nav-link" href="./user.html">
                             <i class="nc-icon nc-circle-09"></i>
                             <p>User Profile</p>
                         </a>
                     </li>
                     <li class="nav-item active">
                         <a class="nav-link" href="./patient..html">
                             <i class="nc-icon nc-paper-2"></i>
                             <p>Patient Details</p>
                         </a>
                     </li>
                     <!-- <li>
                         <a class="nav-link" href="./table.html">
                             <i class="nc-icon nc-notes"></i>
                             <p>Diease</p>
                         </a>
                     </li> -->
 
                     
                     <!-- <li>
                         <a class="nav-link" href="./maps.html">
                             <i class="nc-icon nc-pin-3"></i>
                             <p>Maps</p>
                         </a>
                     </li>
                     <li>
                         <a class="nav-link" href="./notifications.html">
                             <i class="nc-icon nc-bell-55"></i>
                             <p>Notifications</p>
                         </a>
                     </li> -->
 
                 </ul>
             </div>
         </div>
         <div class="main-panel">
             <!-- Navbar -->
             <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                 <div class="container-fluid">
                     <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                           <span class="navbar-toggler-bar burger-lines"></span>
                           <span class="navbar-toggler-bar burger-lines"></span>
                           <span class="navbar-toggler-bar burger-lines"></span>
                       </button>
                     <div class="collapse navbar-collapse justify-content-end" id="navigation">
                         <ul class="nav navbar-nav mr-auto">
                             <li class="menu-active"><a href="../../index.html">Home</a></li>
                             <li><a href="../../about.html">About Us</a></li>
                             <li><a href="">Logout</a></li>
                         </ul>
                     </div>
                 </div>
             </nav>
             <!-- End Navbar -->
             <div class="content">
                 <div class="container-fluid">
                     <div class="row">
                         <div class="col-md-8">
                             <div class="card">
                                 <div class="card-header">
                                     <h4 class="card-title">Patient Details</h4>
                                 </div>
                                 <div class="card-body">
                                     <!-- <form> -->
                                         <div class="row">
                                             <div class="col-md-12 pr-1">
                                                 <div class="form-group">
                                                     <label>Name</label>
                                                     <input type="text" class="form-control" placeholder="Full Name" name="pName" id="pName" disabled>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="row">
                                             <div class="col-md-6 pr-1">
                                                 <div class="form-group">
                                                     <label>DOB</label>
                                                     <input type="date" class="form-control" name="pDate" id="pDate" disabled>
                                                 </div>
                                             </div>
                                             <!-- <div class="col-md-6 pl-1">
                                                <div class="form-group">
                                                    <label>Gender</label><br>
                                                    <div class="form-check form-check-inline gen">
                                                        <input class="form-check-input labl" type="radio" name="pGender" id="inlineRadio1" value="Male" style="position: relative;right: -40%;">
                                                        <label class="form-check-label" for="inlineRadio1" style="position: relative;right: 5%;">Male</label>
                                                      </div>
                                                      <div class="form-check form-check-inline gen">
                                                        <input class="form-check-input" type="radio" name="pGender" id="inlineRadio2" value="Female" style="position: relative;right: -20%;">
                                                        <label class="form-check-label" for="inlineRadio2" style="position: relative;right: 20%;">Female</label>
                                                      </div>
                                                      <div class="form-check form-check-inline gen">
                                                        <input class="form-check-input" type="radio" name="pGender" id="inlineRadio3" value="Other" style="position: relative;right: -8%;">
                                                        <label class="form-check-label" for="inlineRadio3" style="position: relative;right: 35%;">Other</label>
                                                      </div>
                                                </div> -->
                                             <div class="col-md-6">
                                                 <label for="">Gender</label><br>
                                                 <input type="radio" name="pGender" value="Male" class="male" disabled /><label for="male" class="male1">Male</label>
                                                 <input type="radio" name="pGender" value="Female" class="female" disabled/><label for="female" class="female1">Female</label>
                                                 <input type="radio" name="pGender" value="Other" class="other" disabled/><label for="other" class="other1">Other</label>
                                             </div>
                                         </div>
                                         <div class="row">
                                             <div class="col-md-4 pr-1">
                                                 <div class="form-group">
                                                     <label>Height</label>
                                                     <input type="number" class="form-control" placeholder="Height in cm" pattern="[0-9]" name="pHeight" id="pHeight" disabled>
                                                 </div>
                                             </div>
                                             <div class="col-md-4 pr-1">
                                                 <div class="form-group">
                                                     <label>Weight</label>
                                                     <input type="number" class="form-control" placeholder="Weight in kg" pattern="[0-9]" name="pWeight" id="pWeight" disabled>
                                                 </div>
                                             </div>
                                             <div class="col-md-4 pr-1">
                                                 <div class="form-group">
                                                     <label>Blood Group</label>
                                                     <input type="text" class="form-control" placeholder="Blood Group" name="pBlood" id="pBlood" disabled>
                                                 </div>
                                                 <div class="form-group">
                                                </div><br><br>
                                                </div>
                                             
                                         </div>
                                         <!-- <div class="row">
                                             <div class="col-md-6 pr-1">
                                                 <div class="form-group">
                                                     <label>Mobile Number</label>
                                                     <input type="text" class="form-control" placeholder="Mobile Number" pattern="[0-9]{10}" name="pmobNo" disabled>
                                                 </div>
                                             </div>
                                             <div class="col-md-6 pl-1">
                                                 <div class="form-group">
                                                     <label for="exampleInputEmail1">Email address</label>
                                                     <input type="email" class="form-control" placeholder="Email" name="pEmail" disabled>
                                                 </div>
                                             </div>
                                         </div>
 
                                         <div class="row">
                                             <div class="col-md-12 pr-1">
                                                 <div class="form-group">
                                                     <label>Address</label>
                                                     <input type="text" class="form-control" placeholder="Home Address" name="pAddress" disabled>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="row">
 
                                             <div class="col-md-4 pr-1">
                                                 <div class="form-group">
                                                     <label>Pin code</label>
                                                     <input type="text" class="form-control" placeholder="PIN Code" pattern="[0-9]{6}" name="pPincode" disabled>
                                                 </div>
                                             </div>
                                             <div class="col-md-4 pl-1">
                                                 <div class="form-group">
                                                     <label>State</label>
                                                     <input type="text" class="form-control" placeholder="State" name="pState" disabled>
                                                 </div>
                                             </div>
                                             <div class="col-md-4 pl-1">
                                                 <div class="form-group">
                                                     <label>City</label>
                                                     <input type="text" class="form-control" placeholder="City" name="pCity" disabled>
                                                 </div>
                                             </div>
                                         </div> -->
                                         <div class="clearfix"></div>
                                     <!-- </form> -->
                                 </div>
                             </div>
                         </div>
                         <div class="col-md-4">
                             <div class="card card-user">
                                 <div class="card-image">
                                     <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="...">
                                 </div>
                                 <div class="card-body">
                                     <div class="author">
                                         <a href="#">
                                             <img class="avatar border-gray" src="../assets/img/faces/face-01.jpg" alt="...">
                                             <!-- <h5 class="title">Mike Andrew</h5> -->
                                         </a>
                                         <p class="description">
                                             <h3>Search Patient</h3>
                                         </p>
                                     </div>
                                     <!-- <p class="description text-center">
                                         "Lamborghini Mercy
                                         <br> Your chick she so thirsty
                                         <br> I'm in that two seat Lambo"
 
                                     </p> -->
                                     <div class="search-container">
                                             <input type="text" placeholder="Search.." id="search" name="search">
                                             <button type="button" onclick="searchP();"><i class="fa fa-search"></i></button>
                                     </div>
                                 </div>
                                 <!-- <hr>
                                 <div class="button-container mr-auto ml-auto">
                                     <button href="#" class="btn btn-simple btn-link btn-icon">
                                          <i class="fa fa-facebook-square"></i>
                                      </button>
                                     <button href="#" class="btn btn-simple btn-link btn-icon">
                                          <i class="fa fa-twitter"></i>
                                      </button>
                                     <button href="#" class="btn btn-simple btn-link btn-icon">
                                          <i class="fa fa-google-plus-square"></i>
                                      </button>
                                 </div> -->
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Medicine Details</h4>
                                </div>
                                <div class="card-body">
                                    <!-- <form> -->
                                    <%@include file="display.jsp" %>
                                    <!-- </form> -->
                                 </div>
                             </div>
                    </div>
                </div>
            </div>
             </div>
     </div>
     
 
 
 </body>
 <!--   Core JS Files   -->
 <script src="../assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
 <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
 <script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
 <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
 <script src="../assets/js/plugins/bootstrap-switch.js"></script>
 <!--  Google Maps Plugin    -->
 <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
 <!--  Chartist Plugin  -->
 <script src="../assets/js/plugins/chartist.min.js"></script>
 <!--  Notifications Plugin    -->
 <script src="../assets/js/plugins/bootstrap-notify.js"></script>
 <!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
 <script src="../assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
 <!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
 <script src="../assets/js/demo.js"></script>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 <script src="js/sign_chem.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 </html>