<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@page import="com.dao.*" %>
<%@page import="java.sql.*" %>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="side-bar.jsp"></jsp:include>



    <html>
        <head>
            <title>Activities</title>
            <link rel="shortcut icon" href="img/logo1.ico" />
            <!--global styles-->
            <link type="text/css" rel="stylesheet" href="css/components.css" />
            <link type="text/css" rel="stylesheet" href="css/custom.css" />
            <!-- end of global styles-->
            <link type="text/css" rel="stylesheet" href="vendors/c3/css/c3.min.css" />
            <link type="text/css" rel="stylesheet" href="vendors/toastr/css/toastr.min.css" />
            <link type="text/css" rel="stylesheet" href="vendors/switchery/css/switchery.min.css" />
            <link type="text/css" rel="stylesheet" href="css/pages/new_dashboard.css" />
            <link type="text/css" rel="stylesheet" href="vendors/select2/css/select2.min.css" />
            <link type="text/css" rel="stylesheet" href="vendors/datatables/css/scroller.bootstrap.min.css" />
            <link type="text/css" rel="stylesheet" href="vendors/datatables/css/colReorder.bootstrap.min.css" />
            <link type="text/css" rel="stylesheet" href="vendors/datatables/css/dataTables.bootstrap.min.css" />
            <link type="text/css" rel="stylesheet" href="css/pages/dataTables.bootstrap.css" />
            <link type="text/css" rel="stylesheet" href="css/pages/tables.css" />
            <link type="text/css" rel="stylesheet" href="#" id="skin_change" />
        </head>
        <body class="body">
        <%
            if (application.getAttribute("admin_name") == null || application.getAttribute("admin_name").toString().equals("logout")) {
                response.sendRedirect("login.jsp");
            }
        %>
        <div id="content" class="bg-container fixed_header_menu_conainer fixed_header_menu_page">
            <a href="add_activity.jsp"><button class="btn btn-success" style="margin-top: 47px;float:right;margin-right: 15px;">Add Activities</button></a>
        </div>
        <div class="card m-t-35 bg-container fixed_header_menu_conainer fixed_header_menu_page">
            <div class="card-header bg-white">
                All Activities
            </div>
            <div class="card-block">
                <div class="table-responsive m-t-35">
                    <table class="table  table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Activity Name</th>
                                <th>Event Date</th>
                                <th>Event Price</th>
                                <th>Event Detail</th>
                                <th>Created Date</th>
                                <th>Updated Date</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ResultSet rs = connection.show_activities(1);
                                int i = 1;
                                while (rs.next()) {
                            %>
                            <tr>
                                <td><%=i%></td>
                                <td><%=rs.getString("activity_name")%></td>
                                <td><%=rs.getString("activity_date")%></td>
                                <td><%=rs.getString("activity_price")%></td>
                                <td><%=rs.getString("activity_detail")%></td>
                                <td><%=rs.getString("created_date")%></td>
                                <td><%=rs.getString("updated_date")%></td>
                                <td>
                                    <form action="edit_acitivity.jsp" method="post">
                                        <input type="hidden" name="function" value="edit">
                                        <input type="hidden" name="editid" value="<%=rs.getInt("activity_id")%>">
                                        <button type="submit" class="btn btn-success"><i class="fa fa-pencil"></i></button>
                                    </form>
                                </td>
                            </tr>
                            <%
                                    i++;
                                }
                                rs.close();
                            %>

                        </tbody>
                    </table>
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
        <script type="text/javascript" src="vendors/select2/js/select2.js"></script>
        <script type="text/javascript" src="vendors/datatables/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="js/pluginjs/dataTables.tableTools.js"></script>
        <script type="text/javascript" src="vendors/datatables/js/dataTables.colReorder.min.js"></script>
        <script type="text/javascript" src="vendors/datatables/js/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript" src="vendors/datatables/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src="vendors/datatables/js/dataTables.responsive.min.js"></script>
        <script type="text/javascript" src="vendors/datatables/js/dataTables.rowReorder.min.js"></script>
        <script type="text/javascript" src="vendors/datatables/js/buttons.colVis.min.js"></script>
        <script type="text/javascript" src="vendors/datatables/js/buttons.html5.min.js"></script>
        <script type="text/javascript" src="vendors/datatables/js/buttons.bootstrap.min.js"></script>
        <script type="text/javascript" src="vendors/datatables/js/buttons.print.min.js"></script>
        <script type="text/javascript" src="vendors/datatables/js/dataTables.scroller.min.js"></script>

        <!--end of plugin scripts-->
        <script type="text/javascript" src="js/pages/datatable.js"></script>
        <script type="text/javascript" src="js/pages/new_dashboard.js"></script>
    </body>
</html>