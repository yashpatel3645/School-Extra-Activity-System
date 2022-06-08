<%@page import="java.sql.*"%>
<%@page import="com.dao.connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="side-bar.jsp"></jsp:include>

    <html>
        <head>
            <title>Admin Page</title>
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
        </head>
        <body class="body">
        <%
            if (application.getAttribute("admin_name") == null || application.getAttribute("admin_name").toString().equals("logout")) {
                response.sendRedirect("login.jsp");
            }
        %>
        <div class="col-sm-3 col-xs-12 bg-container fixed_header_menu_conainer fixed_header_menu_page" style="margin-top: 55px">
            <div class="bg-mint top_cards">
                <div class="row icon_margin_left">
                    <div class="col-lg-5 icon_padd_left">
                        <div class="float-xs-left">
                            <span class="fa-stack fa-sm">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-users  fa-stack-1x fa-inverse text-mint sub"></i>
                            </span>
                        </div>
                    </div>
                    <div class="col-lg-7 icon_padd_right">
                        <div class="float-xs-right cards_content">
                            <%
                                ResultSet rs = connection.count_students();
                                rs.next();
                            %>
                            <span class="number_val" ><%=rs.getInt(1)%></span>
                            <br />
                            <span class="card_description" style="margin-right: 30px">Students</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-3 col-xs-12 bg-container fixed_header_menu_conainer fixed_header_menu_page" style="margin-top: 55px">
            <div class="bg-mint top_cards">
                <div class="row icon_margin_left">
                    <div class="col-lg-5 icon_padd_left">
                        <div class="float-xs-left">
                            <span class="fa-stack fa-sm">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-pencil-square-o  fa-stack-1x fa-inverse text-mint sub"></i>
                            </span>
                        </div>
                    </div>
                    <div class="col-lg-7 icon_padd_right">
                        <div class="float-xs-right cards_content">
                            <%
                                ResultSet rs1 = connection.count_activities();
                                rs1.next();
                            %>
                            <span class="number_val" ><%=rs1.getInt(1)%></span>
                            <br />
                            <span class="card_description" style="margin-right: 30px">Activities</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-3 col-xs-12 bg-container fixed_header_menu_conainer fixed_header_menu_page" style="margin-top: 55px">
            <div class="bg-mint top_cards">
                <div class="row icon_margin_left">
                    <div class="col-lg-5 icon_padd_left">
                        <div class="float-xs-left">
                            <span class="fa-stack fa-sm">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-first-order  fa-stack-1x fa-inverse text-mint sub"></i>
                            </span>
                        </div>
                    </div>
                    <div class="col-lg-7 icon_padd_right">
                        <div class="float-xs-right cards_content">
                            <%
                                ResultSet rs2 = connection.count_booked_activities();
                                rs2.next();
                            %>
                            <span class="number_val" ><%=rs2.getInt(1)%></span>
                            <br />
                            <span class="card_description" style="margin-right: 30px">Booking of Activities</span>
                        </div>
                            <%
                            rs.close();
                            rs1.close();
                            rs2.close();
                            %>
                    </div>
                </div>
            </div>
        </div>
        <!-- global scripts-->
        <script type="text/javascript" src="js/components.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>

        <!-- global scripts end-->

        <script type="text/javascript" src="vendors/raphael/js/raphael-min.js"></script>
        <script type="text/javascript" src="vendors/d3/js/d3.min.js"></script>
        <script type="text/javascript" src="vendors/c3/js/c3.min.js"></script>
        <script type="text/javascript" src="vendors/toastr/js/toastr.min.js"></script>
        <script type="text/javascript" src="vendors/switchery/js/switchery.min.js"></script>
        <script type="text/javascript" src="vendors/flotchart/js/jquery.flot.js"></script>
        <script type="text/javascript" src="vendors/flotchart/js/jquery.flot.resize.js"></script>
        <script type="text/javascript" src="vendors/flotchart/js/jquery.flot.stack.js"></script>
        <script type="text/javascript" src="vendors/flotchart/js/jquery.flot.time.js"></script>
        <script type="text/javascript" src="vendors/flotspline/js/jquery.flot.spline.min.js"></script>
        <script type="text/javascript" src="vendors/flotchart/js/jquery.flot.categories.js"></script>
        <script type="text/javascript" src="vendors/flotchart/js/jquery.flot.pie.js"></script>
        <script type="text/javascript" src="vendors/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
        <script type="text/javascript" src="vendors/jquery_newsTicker/js/newsTicker.js"></script>
        <script type="text/javascript" src="vendors/countUp.js/js/countUp.min.js"></script>

        <!--end of plugin scripts-->
        <script type="text/javascript" src="js/pages/new_dashboard.js"></script>
    </body>
</html>