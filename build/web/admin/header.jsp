<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<link rel="shortcut icon" href="img/logo1.ico" />

    <!--global styles-->
    <link type="text/css" rel="stylesheet" href="css/components.css" />
    <link type="text/css" rel="stylesheet" href="css/custom.css" />
    <!-- end of global styles-->
    <link type="text/css" rel="stylesheet" href="vendors/c3/css/c3.min.css" />
    <link type="text/css" rel="stylesheet" href="vendors/toastr/css/toastr.min.css" />
    <link type="text/css" rel="stylesheet" href="vendors/switchery/css/switchery.min.css" />
    <link type="text/css" rel="stylesheet" href="css/pages/new_dashboard.css" />
    <link type="text/css" rel="stylesheet" href="#" id="skin_change" />
    <link type="text/css" rel="stylesheet" href="css/pages/portlet.css"/>
    <link type="text/css" rel="stylesheet" href="css/pages/advanced_components.css"/>
</head>
<body class="menu-affix fixed">
<div class="preloader" style=" position: fixed;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 100000;
  backface-visibility: hidden;
  background: #ffffff;">
    <div class="preloader_img" style="width: 200px;
  height: 200px;
  position: absolute;
  left: 48%;
  top: 48%;
  background-position: center;
z-index: 999999">
        <img src="img/loader.gif" style=" width: 40px;" alt="loading...">
    </div>
</div>
    
    <div class="bg-dark" id="wrap">
	 <div id="top">
        <!-- .navbar -->
        <nav class="navbar navbar-static-top navbar-fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand text-xs-center" href="index.jsp">
                    <h4 class="text-white"><img src="img/logow.png" class="admin_img" alt="logo"> School Extra Activities System</h4>
                </a>
                
                <!-- Toggle Button -->
                <div class="text-xs-right xs_menu">
                    <button class="navbar-toggler hidden-xs-up" type="button" data-toggle="collapse"
                            data-target="#nav-content">
                        ☰
                    </button>
                </div>
                <!-- Nav Content -->
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="topnav dropdown-menu-right float-xs-right">
                    <div class="btn-group">
                        <div class="user-settings no-bg">
                            <button type="button" class="btn btn-default no-bg micheal_btn" data-toggle="dropdown">
                                <strong><%
                                        out.print(application.getAttribute("admin_name"));
                                %></strong>
                                <span class="fa fa-sort-down white_bg"></span>
                            </button>
                                <div class="dropdown-menu admire_admin" style="right: 0px;left: auto">
                                    <a class="dropdown-item title" style="font-size: 12px !important"><%
                                        out.print(application.getAttribute("admin_email"));
                                %>
                                    </a>
                                <a class="dropdown-item" href="edit_user.html"><i class="fa fa-cogs"></i>
                                    Account Settings</a>
                                <a class="dropdown-item" href="#">
                                    <i class="fa fa-user"></i>
                                    User Status
                                </a>
                                <a class="dropdown-item" href="mail_inbox.html"><i class="fa fa-envelope"></i>
                                    Inbox</a>

                                <a class="dropdown-item" href="lockscreen.html"><i class="fa fa-lock"></i>
                                    Lock Screen</a>
                                   <a class="dropdown-item" href="logout.jsp"><i class="fa fa-sign-out"></i>
                                    Log Out</a>  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </nav>
        </div>
        </div>
        <!-- global scripts-->
<script type="text/javascript" src="js/components.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript" src="js/pages/modals.js"></script>
<!-- end of global scripts-->
</body>
</html>