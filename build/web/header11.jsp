<!DOCTYPE html>


<html class="no-js" lang="en">
    <head>
        <link rel="shortcut icon" href="img/logo1.ico" />

        <!--global styles-->
        <link type="text/css" rel="stylesheet" href="admin/css/components.css" />
        <link type="text/css" rel="stylesheet" href="admin/css/custom.css" />
        <!-- end of global styles-->
        <link type="text/css" rel="stylesheet" href="admin/vendors/c3/css/c3.min.css" />
        <link type="text/css" rel="stylesheet" href="admin/vendors/toastr/css/toastr.min.css" />
        <link type="text/css" rel="stylesheet" href="admin/vendors/switchery/css/switchery.min.css" />
        <link type="text/css" rel="stylesheet" href="admin/css/pages/new_dashboard.css" />
        <link type="text/css" rel="stylesheet" href="#" id="skin_change" />
        <link type="text/css" rel="stylesheet" href="admin/css/pages/portlet.css"/>
        <link type="text/css" rel="stylesheet" href="admin/css/pages/advanced_components.css"/>
    </head>
    <body class="menu-affix fixed">
        <!--        <div class="preloader" style=" position: fixed;
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
                        <img src="admin/img/loader.gif" style=" width: 40px;" alt="loading...">
                    </div>
                </div>-->
        <div class="bg-dark" id="wrap">
            <div id="top">
                <!-- .navbar -->
                <nav class="navbar navbar-static-top navbar-fixed-top">
                    <div class="container-fluid">
                        <a class="navbar-brand text-xs-center" href="index.jsp">
                            <h4 class="text-white"><img src="admin/img/logow.png" class="admin_img" alt="logo"> School Extra Activities System</h4>
                        </a>

                        <!-- Toggle Button -->
                        <div class="text-xs-right xs_menu">
                            <button class="navbar-toggler hidden-xs-up" type="button" data-toggle="collapse"
                                    data-target="#nav-content">
                                â˜°
                            </button>
                        </div>
                        <!-- Nav Content -->
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="topnav dropdown-menu-right float-xs-right">
                            <div class="btn-group">
                                <div class="user-settings no-bg">
                                    
                                    <a href="activity_cart.jsp"><b><label style="position: absolute; left: 8px">2</label></b>
                                        <img src="admin/img/cart.png" class="admin_img2"></a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label style="color: white !important;font-family: sans-serif;margin-top: 10px; font-size: 13px;"><a href="logout.jsp" 
                                                 style="color: white;display: block">Logout</a></label>
                                    &nbsp;&nbsp;&nbsp;
                                    <button type="button" id="aria" class="btn btn-default no-bg micheal_btn" data-toggle="dropdown" data-target="" aria-expanded="false">
                                        <img src="admin/img/admin.png" class=admin_img2 rounded-circle avatar-img" alt="avatar"> <strong  style="color: white !important">yash</strong>
                                    </button>

                                </div>
                            </div>
                        </div>
                        <div class="collapse navbar-toggleable-sm col-lg-6 hidden-md-down float-xl-right  top_menu"
                             id="nav-content" style="right: 125px">
                            <center>
                                <ul class="nav navbar-nav top_menubar">
                                    <li class="nav-item">
                                        <a class="nav-link text-white" href="index.jsp">
                                            <i class="fa fa-home"></i> <span class="quick_text">Home</span>
                                        </a>
                                    </li>
                                    <li class="nav-item" style="display: block">
                                        <a class="nav-link text-white" href="booked.jsp">
                                            <i class="fa fa fa-edit"></i> <span class="quick_text">Booked Activities</span>
                                        </a>
                                    </li>
                                    <li class="nav-item" style="display: block">
                                        <a class="nav-link text-white" href="profile.jsp">
                                            <i class="fa fa fa-user"></i> <span class="quick_text">Profile</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-white" href="aboutus.jsp">
                                            <i class="fa fa-map-marker"></i> <span class="quick_text">About Us</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-white" href="contact.jsp">
                                            <i class="fa fa-phone"></i> <span class="quick_text">Contact Us</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-white" href="feedback.jsp">
                                            <i class="fa fa-commenting"></i> <span class="quick_text">Feedback</span>
                                        </a>
                                    </li>
                                </ul>
                            </center>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="modal fade modal-fade-in-scale-up jest_me" tabindex="-1" id="just_me" role="dialog" aria-labelledby="modalLabeljust" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header bg-primary" style="background-color:#4d4b4b !important">
                            <h2 class="modal-title text-white" id="modalLabeljust">Login</h2>
                        </div>
                        <form action="./control" method="post">
                            <input type="hidden" name="function" value="user_login">
                            <div class="modal-body">
                                <table>
                                    <tr>
                                        <td><label style="padding-right: 28px;">Email</label></td>
                                        <td><input type="text" name="username" autofocus="autofocus" 
                                                   id="username" placeholder="Enter Usernamee" size="40px" style="border-radius: 0.25rem;border: 1px solid #4D4B4B;"></td>
                                    </tr>
                                    <tr>
                                        <td><label style="padding-right: 28px;">Password</label></td>
                                        <td><input type="password" name="password" 
                                                   id="password" placeholder="Enter Password" size="40px" style="border-radius: 0.25rem;border: 1px solid #4D4B4B;"> </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <table>
                                    <tr>
                                        <td style="float: right;margin-left: 30px;"><a style="color: #4d4b4b" href="" class="btn btn-default no-bg micheal_btn" data-toggle="modal" data-target="#just_me1">Forgot password?</a></td>
                                    </tr>
                                </table>
                                <input type="submit"  class="btn btn-primary" style="background-color:#4d4b4b !important;
                                       border-color: #4d4b4b" value="Login">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal fade modal-fade-in-scale-up jest_me" tabindex="-1" id="just_me1" role="dialog" aria-labelledby="modalLabeljust" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header bg-primary" style="background-color:#4d4b4b !important">
                            <h2 class="modal-title text-white" id="modalLabeljust">Forgot Password</h2>
                        </div>
                        <form action="./control" method="post" class="form-horizontal  login_validator" id="form_block_validator">
                            <input type="hidden" name="function" value="user_forgot">
                            <div class="modal-body">
                                <div class="form-group row" style="margin-bottom: 0px">
                                    <div class="col-lg-4 text-lg-right">
                                        <label for="email2" class="form-control-label">E-mail *</label>
                                    </div>
                                    <div class="col-lg-4">
                                        <input type="email" id="email2" name="Email2" class="form-control" style="padding-right: 0px">
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <input type="submit"  class="btn btn-primary" style="background-color:#4d4b4b !important;
                                       border-color: #4d4b4b" value="Submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- global scripts-->
        <script type="text/javascript" src="admin/js/components.js"></script>
        <script type="text/javascript" src="admin/js/custom.js"></script>
        <script type="text/javascript" src="admin/js/pages/modals.js"></script>
        <!-- end of global scripts-->
    </body>
</html>