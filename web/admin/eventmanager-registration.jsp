<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="side-bar.jsp"></jsp:include>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
            <link rel="shortcut icon" href="img/logo1.ico" />
            <!-- global styles-->
            <link type="text/css" rel="stylesheet" href="css/components.css" />
            <link type="text/css" rel="stylesheet" href="css/custom.css" />
            <!-- end of global styles-->
            <!--Plugin styles-->
            <link type="text/css" rel="stylesheet" href="vendors/jquery-validation-engine/css/validationEngine.jquery.css" />
            <link type="text/css" rel="stylesheet" href="vendors/datepicker/css/bootstrap-datepicker.min.css">
            <link type="text/css" rel="stylesheet" href="vendors/datepicker/css/bootstrap-datepicker3.min.html">
            <link type="text/css" rel="stylesheet" href="vendors/datetimepicker/css/DateTimePicker.min.css">
            <link type="text/css" rel="stylesheet" href="vendors/bootstrapvalidator/css/bootstrapValidator.min.css" />
            <!--End of plugin styles-->
            <!--Page level styles-->
            <link type="text/css" rel="stylesheet" href="css/pages/form_validations.css" />
            <link type="text/css" rel="stylesheet" href="#" id="skin_change" />
            <!-- end of page level styles -->
        </head>
        <body>
        <%
            if (application.getAttribute("admin_name") == null || application.getAttribute("admin_name").toString().equals("logout")) {
                response.sendRedirect("login.jsp");
            }
        %>
        <div id="content" class="bg-container fixed_header_menu_conainer fixed_header_menu_page" style="margin-top: 50px;">
            <div class="outer">
                <div class="inner bg-container">
                    <div class="row">
                        <div class="card">
                            <div class="card-header bg-white"  style="font-size: 30px">
                                <i class="fa fa-user-plus" aria-hidden="true"></i>
                                Registration

                            </div>
                            <div class="card-block m-t-35">
                                <form action="../control" class="form-horizontal  login_validator" method="get" id="form_block_validator">
                                    <input type="hidden" name="function" value="eventmanager_registration">
                                    <div class="form-group row">
                                        <div class="col-lg-4  text-lg-right">
                                            <label for="required2" class="form-control-label">Name *</label>
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="text" id="required2" name="Name2" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-4  text-lg-right">
                                            <label for="required2" class="form-control-label">Company Name *</label>
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="text" id="required2" name="companyname" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-4 text-lg-right">
                                            <label for="email2" class="form-control-label">E-mail *</label>
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="email" id="email2" name="Email2" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-4 text-lg-right">
                                            <label for="password2" class="form-control-label">Password *</label>
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="password" id="password2" name="Password2" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-4 text-lg-right">
                                            <label for="confirm_password2" class="form-control-label">Confirm Password *</label>
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="password" id="confirm_password2" name="Confirmpassword2" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-4 text-lg-right">
                                            <label class="form-control-label">Working Time *</label>
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="time" name="opening_time" style="border: 1px solid rgba(0, 0, 0, 0.15);border-radius: 0.25rem;"/>
                                            &nbsp;To&nbsp;
                                            <input type="time" name="closing_time" style="border: 1px solid rgba(0, 0, 0, 0.15);border-radius: 0.25rem;"/>
                                        </div>
                                        <div class="col-lg-4">
                                            
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-4 text-lg-right">
                                            <label for="url2" class="form-control-label">Url *</label>
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="url" id="url2" name="Url2" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-4 text-lg-right">
                                            <label for="url" class="form-control-label">Direction </label>
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="url" id="url" name="directionurl" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-4 text-lg-right">
                                            <label for="digits" class="form-control-label">Mobile No. *</label>
                                        </div>
                                        <div class="col-lg-4">
                                            <input type="text" id="digits" name="digits_only" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-4 text-lg-right">
                                            <label for="digits" class="form-control-label">Events *</label>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="container" style="padding: 0px">
                                            <input type="checkbox" name="event" value="Birthday Party" > Birthday Party
                                            <input type="checkbox" name="event" value="Marriage Function" style="margin-left: 15px;"> Marriage Function
                                            <input type="checkbox" name="event" value="Baby Shower" style="margin-left: 36px;"> Baby Shower
                                            </div>
                                            <div class="container" style="padding: 0px">
                                            <input type="checkbox" name="event" value="Ring Ceremony"> Ring Ceremony
                                            <input type="checkbox" name="event" value="Opening Ceremony" style="margin-left: 10px;"> Opening Ceremony
                                            <input type="checkbox" name="event" value="Seminar" style="margin-left: 29px;"> Seminar
                                            </div>
                                            <div class="container" style="padding: 0px">
                                            <input type="checkbox" name="event" value="Family Events"> Family Events
                                            <input type="checkbox" name="event" value="Wedding Anniversaries" style="margin-left: 18px;"> Wedding Anniversaries
                                            <input type="checkbox" name="event" value="DJ Party" style="margin-left: 9px;"> DJ Party
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-lg-4 text-lg-right">
                                            <label for="digits" class="form-control-label">Address *</label>
                                        </div>
                                        <div class="col-lg-4">
                                            <textarea name="address" style="width: 100%;resize: none;border: 1px solid rgba(0, 0, 0, 0.15);border-radius: 0.25rem;"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-actions form-group row">
                                        <div class="col-lg-4 push-lg-4">
                                            <input type="submit" value="Submit" class="btn btn-primary">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- global scripts-->
        <script type="text/javascript" src="js/components.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>
        <!--End of Global scripts-->
        <!--Plugin scripts-->
        <script type="text/javascript" src="vendors/jquery-validation-engine/js/jquery.validationEngine.js"></script>
        <script type="text/javascript" src="vendors/jquery-validation-engine/js/jquery.validationEngine-en.js"></script>
        <script type="text/javascript" src="vendors/jquery-validation/js/jquery.validate.js"></script>
        <script type="text/javascript" src="vendors/datepicker/js/bootstrap-datepicker.min.js"></script>
        <script type="text/javascript" src="vendors/datetimepicker/js/DateTimePicker.min.js"></script>
        <script type="text/javascript" src="vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
        <script type="text/javascript" src="vendors/moment/js/moment.min.js"></script>
        <!--End of plugin scripts-->
        <!--Page level scripts-->
        <script type="text/javascript" src="js/form.js"></script>
        <script type="text/javascript" src="js/pages/form_validation.js"></script>
        <!-- end page level scripts -->
    </body>
</html>
