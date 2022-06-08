<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="img/logo1.ico" />
    <!--Global styles -->
    <link type="text/css" rel="stylesheet" href="css/components.css" />
    <link type="text/css" rel="stylesheet" href="css/custom.css" />
    <!--End of Global styles -->
    <!--Plugin styles-->
    <link type="text/css" rel="stylesheet" href="vendors/bootstrapvalidator/css/bootstrapValidator.min.css" />
    <link type="text/css" rel="stylesheet" href="vendors/wow/css/animate.css" />
    <!--End of Plugin styles-->
    <link type="text/css" rel="stylesheet" href="css/pages/login.css" />
</head>
<body>
    <div class="preloader" style="position: fixed; width: 100%; height: 100%; top: 0; left: 0; z-index: 100000; backface-visibility: hidden; background: #ffffff;">
        <div class="preloader_img" style="width: 200px; height: 200px; position: absolute; left: 48%; top: 48%; background-position: center; z-index: 999999">
            <img src="img/loader.gif" style="width: 40px;" alt="loading...">
        </div>
    </div>
    <div class="container wow fadeInDown" data-wow-delay="0.5s" data-wow-duration="2s">
        <div class="row">
            <div class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-10 push-sm-1 login_top_bottom">
                <div class="row">
                    <div class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-12">
                        <div class="login_logo login_border_radius1">
                            <h3 class="text-xs-center">
                                <img src="img/logow.png" alt="josh logo" class="admire_logo"><span class="text-white"> Jash Event &nbsp;<br />
                                    Log In</span>
                            </h3>
                        </div>
                        <div class="bg-white login_content login_border_radius">
                            <form action="../control" id="login_validator" method="post" class="login_validator">
                                <div class="form-group">
                                    <label for="email" class="form-control-label">E-mail</label>
                                    <div class="input-group">
                                        <span class="input-group-addon input_email"><i
                                                class="fa fa-envelope text-primary" style="color: #4d4b4b !important"></i></span>
                                        <input type="text" class="form-control  form-control-md" id="email" name="username" placeholder="E-mail">
                                    </div>
                                </div>
                                <!--</h3>-->
                                <div class="form-group">
                                    <label for="password" class="form-control-label">Password</label>
                                    <div class="input-group">
                                        <span class="input-group-addon addon_password"><i
                                            class="fa fa-lock text-primary" style="color: #4d4b4b !important"></i></span>
                                        <input type="password" class="form-control form-control-md" id="password" name="password" placeholder="Password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <input type="submit" value="Log In" class="btn btn-primary btn-block login_button" style="background-color: #4d4b4b !important">
                                            <input type="hidden" name="function" value="adminlogin">
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-xs-6 text-xs-right forgot_pwd" style="float: right">
                                        <a href="forgot-password.jsp" class="custom-control-description forgottxt_clr">Forgot password?</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- global js -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/tether.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- end of global js-->
    <!--Plugin js-->
    <script type="text/javascript" src="vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
    <script type="text/javascript" src="vendors/wow/js/wow.min.js"></script>
    <!--End of plugin js-->
    <script type="text/javascript" src="js/pages/login.js"></script>
</body>


<!-- Mirrored from dev.lorvent.com/admire/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Dec 2016 17:21:33 GMT -->
</html>
