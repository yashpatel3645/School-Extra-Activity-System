<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Profile</title>
        <link type="text/css" rel="stylesheet" href="admin/vendors/jasny-bootstrap/css/jasny-bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="admin/vendors/fullcalendar/css/fullcalendar.min.css"/>
        <!--End off plugin css-->
        <!--Page level css-->
        <link type="text/css" rel="stylesheet" href="admin/css/pages/timeline2.css"/>
        <link type="text/css" rel="stylesheet" href="admin/css/pages/calendar_custom.css"/>
        <link type="text/css" rel="stylesheet" href="admin/css/pages/profile.css"/>
        <link type="text/css" rel="stylesheet" href="admin/css/pages/gallery.css"/>
        <link type="text/css" rel="stylesheet" href="#" id="skin_change"/>
        <!--end of page level css-->
    </head>
    <body>
        <div class="card-block" style="margin-left: 251px;">
            <div class="row">
                <div class="col-lg-6 m-t-35">
                    <div class="text-xs-center">
                        <div class="form-group">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumb_zoom zoom admin_img_width">
                                    <img src="admin/img/admin.jpg" alt="admin" class="admin_img_width"></div>
                                <div class="fileinput-preview fileinput-exists thumb_zoom zoom admin_img_width"></div>
                                <div class="btn_file_position">
                                    <form action="./control">
                                    <span class="btn btn-primary btn-file"  style="background-color:#4d4b4b !important;border-color: #4d4b4b">
                                        <span class="fileinput-new">Change image</span>
                                        <span class="fileinput-exists">Change</span>
                                        <input type="file" name="Changefile">
                                    </span>
                                    <a href="#" class="btn btn-warning fileinput-exists"
                                       data-dismiss="fileinput" style="background-color:#4d4b4b !important;border-color: #4d4b4b">Remove</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">

                        </div>
                    </div>
                </div>
                <div class="col-lg-6 m-t-25">
                    <div>
                        <ul class="nav nav-inline view_user_nav_padding">
                            <li class="nav-item card_nav_hover">
                                <a class="nav-link active" href="#user" id="home-tab"
                                   data-toggle="tab" aria-expanded="true">User
                                    Details</a>
                            </li>
                        </ul>
                        <div id="clothing-nav-content" class="tab-content m-t-10">
                            <div role="tabpanel" class="tab-pane fade in active" id="user">
                                <table class="table" id="users">
                                    <tr>
                                        <td>Name</td>
                                        <td class="inline_edit">
                                            <span class="editable"
                                                  data-title="Edit User Name">Micheal</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>E-mail</td>
                                        <td>
                                            <span class="editable" data-title="Edit E-mail">gankunding@hotmail.com</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Phone Number</td>
                                        <td>
                                            <span class="editable" data-title="Edit Phone Number">(999)999-9999</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>DOB</td>
                                        <td>
                                            <span class="editable" data-title="Edit Phone Number">20/03/1998</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Gender</td>
                                        <td>
                                            <span class="editable" data-title="Edit Phone Number">Male</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td>
                                            <span class="editable" data-title="Edit Address">Australia</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Created At</td>
                                        <td>1 month ago</td>
                                    </tr>
                                    <tr>
                                        <td>City</td>
                                        <td>
                                            <span class="editable" data-title="Edit City">Nakia</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Pincode</td>
                                        <td>
                                            <span class="editable" data-title="Edit Pincode">522522</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="color: red;">*click on details to change</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Global scripts-->
        <script type="text/javascript" src="admin/js/components.js"></script>
        <script type="text/javascript" src="admin/js/custom.js"></script>
        <!--End of Global scripts-->
        <!--Plugin scripts-->
        <script type="text/javascript" src="admin/vendors/jasny-bootstrap/js/jasny-bootstrap.min.js"></script>
        <script type="text/javascript" src="admin/vendors/bootstrap_calendar/js/bootstrap_calendar.min.js"></script>
        <script type="text/javascript" src="admin/vendors/moment/js/moment.min.js"></script>
        <script type="text/javascript" src="admin/vendors/fullcalendar/js/fullcalendar.min.js"></script>
        <!--End of Plugin scripts-->
        <!--Page level scripts-->
        <script type="text/javascript" src="admin/js/pages/mini_calendar.js"></script>
        <!--End of Page level scripts-->
    </body>
</html>