<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="side-bar.jsp"></jsp:include>
<%@page import="com.dao.*" %>
<%@page import="java.sql.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        <link type="text/css" rel="stylesheet" href="vendors/select2/css/select2.min.css" />
        <link type="text/css" rel="stylesheet" href="vendors/datatables/css/scroller.bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="vendors/datatables/css/colReorder.bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="vendors/datatables/css/dataTables.bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="css/pages/dataTables.bootstrap.css" />
        <!-- end of plugin styles -->
        <!--Page level styles-->
        <link type="text/css" rel="stylesheet" href="css/pages/tables.css" />
        <link type="text/css" rel="stylesheet" href="#" id="skin_change" />
    </head>
    <body>
        <%
            if (application.getAttribute("admin_name") == null || application.getAttribute("admin_name").toString().equals("logout")) {
                response.sendRedirect("login.jsp");
            }
        %>
        <div class="card m-t-35 bg-container fixed_header_menu_conainer fixed_header_menu_page">
            <div class="card-header bg-white">
                Booked Activities
            </div>
            <div class="card-block">
                <div class="table-responsive m-t-35">
                    <table class="table  table-striped">
                        <thead>
                            <tr>
                                <th>Booking No</th>
                                <th>Student Name</th>
                                <th>Student Email</th>
                                <th>Activity Name</th>
                                <th>Booked Date</th>
                                <th>Payment Type</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                ResultSet rs = connection.booked_activities();
                                while (rs.next()) {
                                    ResultSet rs1 = connection.give_one_activity(Integer.parseInt(rs.getString("activity_id")));
                                    rs1.next();
                                    ResultSet rs2 = connection.getsingleuser(1, rs.getInt("user_id"));
                                    rs2.next();
                            %>
                            <tr>
                                <td><%=rs.getInt("booking_no")%></td>
                                <td><%=rs2.getString("name")%></td>
                                <td><%=rs2.getString("email")%></td>
                                <td><%=rs1.getString("activity_name")%></td>
                                <td><%=rs.getString("booked_date")%></td>
                                <td><%=rs.getString("payment_type")%></td>
                                
                            </tr>
                            <%
                                rs1.close();
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
        <!--end of global scripts-->
        <!--plugin scripts-->
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
        <!-- end of plugin scripts -->
        <!--Page level scripts-->
        <script type="text/javascript" src="js/pages/datatable.js"></script>
        <!-- end of global scripts-->
    </body>
</html>
