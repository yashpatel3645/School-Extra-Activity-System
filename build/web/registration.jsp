<%@ include file="header.jsp" %>

<!doctype html>
<html class="no-js" lang="en" style="position: fixed;">


    <!-- Mirrored from dev.lorvent.com/admire/form_validations.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Dec 2016 17:26:30 GMT -->
    <head>
        <meta charset="UTF-8">
        <title>Registration</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="admin/img/logo1.ico" />
        <!-- global styles-->
        <link type="text/css" rel="stylesheet" href="admin/css/components.css" />
        <link type="text/css" rel="stylesheet" href="admin/css/custom.css" />
        <!-- end of global styles-->
        <!--Plugin styles-->
        <link type="text/css" rel="stylesheet" href="admin/vendors/jquery-validation-engine/css/validationEngine.jquery.css" />
        <link type="text/css" rel="stylesheet" href="admin/vendors/datepicker/css/bootstrap-datepicker.min.css">
        <link type="text/css" rel="stylesheet" href="admin/vendors/datepicker/css/bootstrap-datepicker3.min.html">
        <link type="text/css" rel="stylesheet" href="admin/vendors/datetimepicker/css/DateTimePicker.min.css">
        <link type="text/css" rel="stylesheet" href="admin/vendors/bootstrapvalidator/css/bootstrapValidator.min.css" />
        <!--End of plugin styles-->
        <!--Page level styles-->
        <link type="text/css" rel="stylesheet" href="admin/css/pages/form_validations.css" />
        <link type="text/css" rel="stylesheet" href="#" id="skin_change" />
        <!-- end of page level styles -->
    </head>
    <body style="background-color: white">
        <div class="preloader" style="position: fixed; width: 100%; height: 100%; top: 0; left: 0; z-index: 100000; backface-visibility: hidden; background: #ffffff;">
            <div class="preloader_img" style="width: 200px; height: 200px; position: absolute; left: 48%; top: 48%; background-position: center; z-index: 999999">
                <img src="admin/img/loader.gif" style="width: 40px;" alt="loading...">
            </div>
        </div>
        <form action="./control" class="form-horizontal  login_validator" id="form_block_validator" style="position: fixed;left: 173px;
              right: 178px;" method="get">
            <input type="hidden" name="function" value="registration">
            <br>
            <h1 style="margin-left: 128px;font-size: 45px;">Registration</h1><br>
            <div class="form-group row">
                <div class="col-lg-4  text-lg-right">
                    <label for="required2" class="form-control-label">Name *</label>
                </div>
                <div class="col-lg-4">
                    <input type="text" id="required2" name="Name2" class="form-control" required>
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
                    <label for="digits" class="form-control-label">Mobile No *</label>
                </div>
                <div class="col-lg-4">
                    <input type="text" id="digits" name="mobile_no" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-xl-4 text-lg-right">
                    <label for="sport" class="form-control-label">City *</label>
                </div>
                <div class="col-lg-4">
                    <select name="city" id="sport" class="validate[required] form-control select2">
                        <option value="option1">Ahmedabad</option>
                        <option value="option2">Gandhinagar</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-lg-4 text-lg-right">
                    <label for="digits" class="form-control-label">Pincode *</label>
                </div>
                <div class="col-lg-4">
                    <input type="text" id="digits" name="pincode" class="form-control">
                </div>
            </div>
            <div class="form-actions form-group row">
                <div class="col-lg-4 push-lg-4">
                    <input type="submit" value="Register" class="btn btn-primary" style="background-color:#4d4b4b !important;
                           border-color: #4d4b4b">
                </div>
            </div>
        </form>
        <!-- global scripts-->
        <script type="text/javascript" src="admin/js/components.js"></script>
        <script type="text/javascript" src="admin/js/custom.js"></script>
        <!--End of Global scripts-->
        <!--Plugin scripts-->
        <script type="text/javascript" src="admin/vendors/jquery-validation-engine/js/jquery.validationEngine.js"></script>
        <script type="text/javascript" src="admin/vendors/jquery-validation-engine/js/jquery.validationEngine-en.js"></script>
        <script type="text/javascript" src="admin/vendors/jquery-validation/js/jquery.validate.js"></script>
        <script type="text/javascript" src="admin/vendors/datepicker/js/bootstrap-datepicker.min.js"></script>
        <script type="text/javascript" src="admin/vendors/datetimepicker/js/DateTimePicker.min.js"></script>
        <script type="text/javascript" src="admin/vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
        <script type="text/javascript" src="admin/vendors/moment/js/moment.min.js"></script>
        <!--End of plugin scripts-->
        <!--Page level scripts-->
        <script type="text/javascript" src="admin/js/form.js"></script>
        <script type="text/javascript" src="admin/js/pages/form_validation.js"></script>
        <!-- end page level scripts -->

    </body>
</html>