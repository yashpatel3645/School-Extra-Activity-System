<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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

        <link type="text/css" rel="stylesheet" href="css/pages/advanced_components.css"/>

        <link type="text/css" rel="stylesheet" href="#" id="skin_change" />
    </head>
    <body class="menu-affix fixed">
<div class="bg-dark" id="wrap">
    <div id="left" class="fixed-header_menu" style="margin-top: 47px !important;">
                <div class="left_content">
                    <div class="media user-media bg-dark dker">
                        <div class="user-media-toggleHover">
                            <span class="fa fa-user"></span>
                        </div>
                        <div class="user-wrapper bg-dark">
                            <a class="user-link" href="#">
                                <img class="media-object img-thumbnail user-img rounded-circle admin_img3" alt="User Picture"
                                     src="img/admin.png">
                                <p class="text-white user-info">Welcome <%out.print(application.getAttribute("admin_name"));%></p></a>
                        </div>
                    </div>
                    <!-- #menu -->
                    <ul id="menu" class="bg-blue dker">
                        <li>
                            <a href="index.jsp">
                                <i class="fa fa-home"></i>
                                <span class="link-title">&nbsp;Dashboard</span>
                            </a>
                        </li>
                        <li>
                            <a href="activities.jsp">
                                <i class="fa fa-anchor"></i>
                                <span class="link-title">&nbsp; Activities</span>
                            </a>
                        </li>
                        <li>
                            <a href="showuser.jsp">
                                <i class="fa fa-user"></i>
                                <span class="link-title">&nbsp; Students</span>
                            </a>
                        </li>
                        <li>
                            <a href="booked_activities.jsp">
                                <i class="fa fa-user"></i>
                                <span class="link-title">&nbsp; Booked Activities</span>
                            </a>
                        </li>
                        <li>
                            <a href="showcontectus.jsp">
                                <i class="fa fa-phone"></i>
                                <span class="link-title">&nbsp; Contact Us </span>
                            </a>
                        </li>
                        <li>
                            <a href="showfeedback.jsp">
                                <i class="fa fa-commenting"></i>
                                <span class="link-title">&nbsp; Feedback</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /#menu --> 
            </div>
            </div>
        <!-- global scripts-->
        <script type="text/javascript" src="js/components.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>
        <script type="text/javascript" src="js/pages/modals.js"></script>
        <!-- end of global scripts-->
    </body>
</html>