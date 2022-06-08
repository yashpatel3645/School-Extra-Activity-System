<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="side-bar.jsp"></jsp:include>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Add Student</title>
            <link type="text/css" rel="stylesheet" href="vendors/jquery-validation-engine/css/validationEngine.jquery.css" />
            <link type="text/css" rel="stylesheet" href="vendors/datepicker/css/bootstrap-datepicker.min.css">
            <link type="text/css" rel="stylesheet" href="vendors/datepicker/css/bootstrap-datepicker3.min.html">
            <link type="text/css" rel="stylesheet" href="vendors/datetimepicker/css/DateTimePicker.min.css">
            <link type="text/css" rel="stylesheet" href="vendors/bootstrapvalidator/css/bootstrapValidator.min.css" />
            <!--End of plugin styles-->
            <!--Page level styles-->
            <link type="text/css" rel="stylesheet" href="css/pages/form_validations.css" />
        </head>
        <body>
        <%
            if (application.getAttribute("admin_name") == null || application.getAttribute("admin_name").toString().equals("logout")) {
                response.sendRedirect("login.jsp");
            }
        %>
        <div class="bg-dark" id="wrap">

            <div id="content" class="bg-container fixed_header_menu_conainer fixed_header_menu_page" style="background-color: white;margin-left: 50px !important">
                <form action="../control" class="form-horizontal  login_validator" id="form_block_validator" style="margin-top: 80px">
                    <input type="hidden" name="function" value="addstudent">
                    <label style="font-size: 35px;margin-left: 260px;">Add Student</label>
                    <div class="form-group row">
                        <div class="col-lg-3  text-lg-right">
                            <label for="required2" class="form-control-label">Name *</label>
                        </div>
                        <div class="col-lg-3">
                            <input type="text" id="required2" name="name" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-lg-3 text-lg-right">
                            <label for="email2" class="form-control-label">E-mail *</label>
                        </div>
                        <div class="col-lg-3">
                            <input type="email" id="email2" name="email" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-lg-3 text-lg-right">
                            <label for="password2" class="form-control-label">Password *</label>
                        </div>
                        <div class="col-lg-3">
                            <input type="password" id="password2" name="password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-lg-3 text-lg-right">
                            <label for="confirm_password2" class="form-control-label">Confirm Password *</label>
                        </div>
                        <div class="col-lg-3">
                            <input type="password" id="confirm_password2" name="confirmpassword" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-lg-3 text-lg-right">
                            <label for="digits" class="form-control-label">Contact No *</label>
                        </div>
                        <div class="col-lg-3">
                            <input type="text" id="digits" name="contact_no" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-lg-3  text-lg-right">
                            <label for="required2" class="form-control-label">Home No: *</label>
                        </div>
                        <div class="col-lg-3">
                            <input type="text" id="required2" name="home_no" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-lg-3  text-lg-right">
                            <label for="required2" class="form-control-label">City *</label>
                        </div>
                        <div class="col-lg-3">
                            <input type="text" id="required2" name="city" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-lg-3  text-lg-right">
                            <label for="required2" class="form-control-label">Postcode *</label>
                        </div>
                        <div class="col-lg-3">
                            <input type="text" id="required2" name="postcode" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-actions form-group row">
                        <div class="col-lg-3 push-lg-3  ">
                            <input type="submit" value="Add" class="btn btn-primary" style="background-color:#4d4b4b !important;border-color: #4d4b4b;color: white !important;">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- global scripts-->
        <script type="text/javascript" src="js/components.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>
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