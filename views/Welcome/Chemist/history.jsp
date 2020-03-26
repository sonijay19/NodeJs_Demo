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
                    <li class="nav-item ">
                        <a class="nav-link" href="dashboard.html">
                            <i class="nc-icon nc-chart-pie-35"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="./user.html">
                            <i class="nc-icon nc-circle-09"></i>
                            <p>User Profile</p>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="./patient.html">
                            <i class="nc-icon nc-paper-2"></i>
                            <p>Patient Details</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="./table.html">
                            <i class="nc-icon nc-notes"></i>
                            <p>Diease</p>
                        </a>
                    </li>

                    <li>
                        <a class="nav-link active" href="./history.html">
                            <i class="nc-icon nc-atom"></i>
                            <p>History</p>
                        </a>
                    </li>
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
            <div class="col-md-12">
                <h3 style="background-color:black;color:blanchedalmond;text-align: center;width: 92%;left: 4%;position: relative;height: 50px;"><span style="position: relative;top: 10px;">𝕄𝔼𝔻𝕀ℂ𝔸𝕃 ℍ𝕀𝕊𝕋𝕆ℝ𝕐</span>
                </h3>
                <div class="container sam1" style="background-color: aquamarine;">
                    <div class="dialogbox">
                        <p style="font-weight: bold;color: black;width: 30%; position: relative;top: 45px;">Disease</p>
                        <div style="position: relative;left: 80%;">
                            Date <input type="date" disabled style="background-color: white;">
                        </div>
                        <div class="body " style="position: relative;top: 3px;">
                            <span class="tip tip-up "></span>
                            <div class="message ">
                                <span>Disease</span>
                            </div>
                        </div>
                    </div>

                    <div class="dialogbox ">
                        <p style="font-weight: bold;color: black;width: 30%;position:relative;top: -10px; ">Medicine</p>
                        <div class="body " style="position: relative;top: -15px; ">
                            <span class="tip tip-up "></span>
                            <div class="message ">
                                <span> Medicine</span>
                            </div>
                        </div>
                    </div>

                    <div class="dialogbox ">
                        <p style="font-weight: bold;color: black;width: 30%;position: relative; top:-20px ;">Consult</p>
                        <div class="body " style="position: relative;top: -25px; ">
                            <span class="tip tip-up "></span>
                            <div class="message ">
                                <span>This is consultancy</span>
                            </div>
                        </div>
                    </div>

                    <!-- <div class="dialogbox ">
                        <div class="body " style="position: relative;top: -20px; ">
                            <span class="tip tip-left "></span>
                            <div class="message ">
                                <span>Medicine</span>
                            </div>
                        </div>
                    </div> -->
                </div>

            </div>

        </div>
    </div>
    </div>
    </div>

    </div>
    </div>

</body>
<!--   Core JS Files   -->
<script src="../assets/js/core/jquery.3.2.1.min.js " type="text/javascript "></script>
<script src="../assets/js/core/popper.min.js " type="text/javascript "></script>
<script src="../assets/js/core/bootstrap.min.js " type="text/javascript "></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="../assets/js/plugins/bootstrap-switch.js "></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript " src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE "></script>
<!--  Chartist Plugin  -->
<script src="../assets/js/plugins/chartist.min.js "></script>
<!--  Notifications Plugin    -->
<script src="../assets/js/plugins/bootstrap-notify.js "></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="../assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript "></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="../assets/js/demo.js "></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js " integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo " crossorigin="anonymous "></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js " integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1 " crossorigin="anonymous "></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js " integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM " crossorigin="anonymous "></script>

</html>