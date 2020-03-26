<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link href="../../img/health.png" rel="icon">
    <link href="../../img/health.png" rel="apple-touch-icon">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>HealthCard - patient problem</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../assets/css/demo.css" rel="stylesheet" />
    <!-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>

<body>
	<%
	/*HttpSession st = request.getSession();
	String id = st.getAttribute("pid").toString();
	if(id == ""){
		response.sendRedirect("patient.jsp");
	}
	else{
		st.setAttribute("pid", id);
	}*/
	String pid = "1234567899";
	%>
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
                    <li class="nav-item">
                        <a class="nav-link" href="dashboard.jsp">
                            <i class="nc-icon nc-chart-pie-35"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="./user.jsp">
                            <i class="nc-icon nc-circle-09"></i>
                            <p>Doctor Profile</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="./patient.jsp">
                            <i class="nc-icon nc-paper-2"></i>
                            <p>Patient Details</p>
                        </a>
                    </li>
                    <li class="active">
                        <a class="nav-link" href="./table.jsp">
                            <i class="nc-icon nc-notes"></i>
                            <p>Disease</p>
                        </a>
                    </li>

                    <li>
                        <a class="nav-link" href="./history.jsp">
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
                            <li><a href="/Health1/index.jsp">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <form action="/Health1/InsertHistory" method="post">
            <div class="content" style="position: relative;">
                <!-- <button id="btn1s" onclick="show()">Add Disease</button> -->
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">

                            <div class="container" id="sa1">
                                <div class=" col-md-6">
                                    Date:<input type="date" name="pat_date" id="pat_date">
                                </div>
                                <div class="panel panel-default" class="row">
                                    <div class="panel-heading">
                                        Add disease
                                    </div>
                                    <div class="panel-body">



                                        <div class="control-group  input-group after-add-more">
                                            <!-- <input type="text" name="addmore[]" class="form-control" placeholder="Enter Name of disease"> -->
                                            <div class="input-group-btn">
                                                <button class="btn btn-success add-more  col-md-2" type="button"><i class="glyphicon glyphicon-plus" ></i> Add</button>
                                            </div>
                                        </div>


                                        <div class="copy hide">
                                            <div class="control-group input-group" style="margin-top:10px">
                                                <input type="text" name="add_dis" id="add_dis" class="form-control" placeholder="Enter Name of disease">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-danger remove" type="button"><i class="glyphicon glyphicon-remove"></i> Remove</button>
                                                </div>
                                            </div>
                                        </div>

                                        <br>






                                        <!-- <button id="btn1s" onclick="show1()">Add Medicine</button> -->
										
                                        <div class="col-md-12 pl-1" style=" position: absolute; left:0.5% ;top: 100%;">

                                            <div class="container" id="sa2">
                                                <div class="panel panel-default" class="row">
                                                    <div class="panel-heading" class="col-md-6" class="row">Add Medicine </div>
                                                    <div class="panel-body">


                                                        <!-- <form action="action.php"> -->


                                                        <div class="input-group control-group after-add-more1">
                                                            <!-- <input type="text" name="addmore[]" class="form-control" placeholder="Enter Name of Medicine" class="col-md-6 pl-0"> -->
                                                            <div class="input-group-btn">
                                                                <button class="btn btn-success add-more1  col-md-2" type="button"><i class="glyphicon glyphicon-plus" ></i> Add</button>
                                                            </div>
                                                        </div>


                                                        <div class="copy1 hide">
                                                            <div class="control-group input-group" style="margin-top:10px">
                                                                <input type="text" name="add_med" id="add_med" class="form-control" placeholder="Enter Name of medicine">

                                                                <div class="input-group-btn">
                                                                    <button class="btn btn-danger remove1" type="button"><i class="glyphicon glyphicon-remove"></i> Remove</button>
                                                                </div>
                                                            </div>
                                                        </div><br>

                                                        <div class="col-md-12 pl-1" style=" position: absolute; left:0.5% ;top: 100%;">

                                                            <div class="container" id="sa2">
                                                                <div class="panel panel-default" class="row">
                                                                    <div class="panel-heading" class="col-md-6" class="row">Add Consult </div>
                                                                    <div class="panel-body">


                                                                        <!-- <form action="action.php"> -->

                                                                        <div class="input-group control-group after-add-more2">
                                                                            <!-- <input type="text" name="addmore[]" class="form-control" placeholder="Enter Consult" class="col-md-6 pl-0"> -->
                                                                            <div class="input-group-btn">
                                                                                <button class="btn btn-success add-more2 col-md-2" type="button"><i class="glyphicon glyphicon-plus" ></i> Add</button>
                                                                            </div>
                                                                        </div>


                                                                        <div class="copy2 hide">
                                                                            <div class="control-group input-group" style="margin-top:10px">
                                                                                <input type="text" name="add_con" id="add_con" class="form-control" placeholder="Enter Name of consultant">
                                                                                <div class="input-group-btn">
                                                                                    <button class="btn btn-danger remove2" type="button"><i class="glyphicon glyphicon-remove"></i> Remove</button>
                                                                                </div>
                                                                            </div>
                                                                        </div><br>
                                                                        <button type="submit" class="btn btn-success" style="background-color:darksalmon;">Submit</button>
                                                                        <a href="./history.jsp "><button type="submit" class="btn btn-success" style="background-color:darksalmon;">Show History</button></a>
                                                                        <div id="jay_add_his" style="text-align: center;"></div>
                                                                        <!-- Copy Fields -->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    </div>
                    </div>
</form>
                    <script type="text/javascript">
                        $(document).ready(function() {



                            $(".add-more").click(function() {
                                var html = $(".copy").html();
                                $(".after-add-more").after(html);
                            });

                            $("body").on("click", ".remove", function() {
                                $(this).parents(".control-group").remove();
                            });



                        });
                    </script>
                    <script type="text/javascript">
                        $(document).ready(function() {


                            $(".add-more1").click(function() {
                                var html = $(".copy1").html();
                                $(".after-add-more1").after(html);
                            });


                            $("body").on("click", ".remove1", function() {
                                $(this).parents(".control-group").remove();
                            });


                        });
                    </script>
                    <script type="text/javascript">
                        $(document).ready(function() {


                            $(".add-more2").click(function() {
                                var html = $(".copy2").html();
                                $(".after-add-more2").after(html);
                            });


                            $("body").on("click", ".remove2", function() {
                                $(this).parents(".control-group").remove();
                            });


                        });
                    </script>
                    <!-- <script type="text/javascript">
        function show() {
            var x = document.getElementById("sa1").style.display = "block";

        }
    </script>
    <script type="text/javascript">
        function show1() {
            var x = document.getElementById("sa2").style.display = "block";

        }
    </script> -->
</body>
<!--   Core JS Files   -->
<script src="../assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="../assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<!-- <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
<!--  Chartist Plugin  -->
<script src="../assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="../assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="../assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="../assets/js/demo.js"></script>
<script src="js/signin_doc.js"></script>
<script src="js/sign_pat.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</html>