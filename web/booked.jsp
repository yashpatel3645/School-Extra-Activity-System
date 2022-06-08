<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="com.dao.*" %>
<%@page import="java.sql.*" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>

<html>
    <head>
        <title>Booked Activities</title>
        <link rel="shortcut icon" href="img/logo1.ico" />
        <!--global styles-->
        <link type="text/css" rel="stylesheet" href="admin/css/components.css" />
        <link type="text/css" rel="stylesheet" href="admin/css/custom.css" />
        <!-- end of global styles-->
        <link type="text/css" rel="stylesheet" href="admin/vendors/c3/css/c3.min.css" />
        <link type="text/css" rel="stylesheet" href="admin/vendors/toastr/css/toastr.min.css" />
        <link type="text/css" rel="stylesheet" href="admin/vendors/switchery/css/switchery.min.css" />
        <link type="text/css" rel="stylesheet" href="admin/css/pages/new_dashboard.css" />
        <link type="text/css" rel="stylesheet" href="admin/vendors/select2/css/select2.min.css" />
        <link type="text/css" rel="stylesheet" href="admin/vendors/datatables/css/scroller.bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="admin/vendors/datatables/css/colReorder.bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="admin/vendors/datatables/css/dataTables.bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="admin/css/pages/dataTables.bootstrap.css" />
        <link type="text/css" rel="stylesheet" href="admin/css/pages/tables.css" />
        <link type="text/css" rel="stylesheet" href="#" id="skin_change" />
    </head>
    <body>
        <div class="card m-t-35">
            <div class="card-header bg-white">
                <i class="fa fa-table"></i> Booked Activities

            </div>
            <div class="card-block p-t-10">
                <div class=" m-t-25">
                    <table class="table table-striped table-bordered table-hover " id="sample_6">
                        <thead>
                            <tr>
                                <th>Payment id</th>
                                <th>Activity Name</th>
                                <th class="hidden-xs">Activity Date</th>
                                <th class="hidden-xs">Activity Price</th>
                                <th class="hidden-xs">Activity Detail</th>
                                <th class="hidden-xs">Booked Date</th>
                                <th class="hidden-xs">Payment Type</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%                                
                                try {
                                    ResultSet rs = connection.booked_activities(application.getAttribute("user_id").toString());
                                    while (rs.next()) {
                                        ResultSet rs1 = connection.show_user_cart(1, Integer.parseInt(rs.getString("activity_id")));
                                        rs1.next();
                            %>
                            <tr>
                                <td><%=rs.getInt("booking_no")%></td>
                                <td><%=rs1.getString("activity_name")%></td>
                                <td><%=rs1.getString("activity_date")%></td>
                                <td>£<%=rs1.getString("activity_price")%></td>
                                <td><%=rs1.getString("activity_detail")%></td>
                                <td><%=rs.getString("booked_date")%></td>
                                <td><%=rs.getString("payment_type")%></td>
                            </tr>
                            <%            }
                                } catch (Exception e) {
                                    System.out.print(e);
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- global scripts-->
        <script type="text/javascript" src="admin/js/components.js"></script>
        <script type="text/javascript" src="admin/js/custom.js"></script>
        <!-- end of global scripts-->
        <script type="text/javascript" src="admin/vendors/raphael/js/raphael-min.js"></script>
        <script type="text/javascript" src="admin/vendors/select2/js/select2.js"></script>
        <script type="text/javascript" src="admin/vendors/datatables/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="js/pluginjs/dataTables.tableTools.js"></script>
        <script type="text/javascript" src="admin/vendors/datatables/js/dataTables.colReorder.min.js"></script>
        <script type="text/javascript" src="admin/vendors/datatables/js/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript" src="admin/vendors/datatables/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src="admin/vendors/datatables/js/dataTables.responsive.min.js"></script>
        <script type="text/javascript" src="admin/vendors/datatables/js/dataTables.rowReorder.min.js"></script>
        <script type="text/javascript" src="admin/vendors/datatables/js/buttons.colVis.min.js"></script>
        <script type="text/javascript" src="admin/vendors/datatables/js/buttons.html5.min.js"></script>
        <script type="text/javascript" src="admin/vendors/datatables/js/buttons.bootstrap.min.js"></script>
        <script type="text/javascript" src="admin/vendors/datatables/js/buttons.print.min.js"></script>
        <script type="text/javascript" src="admin/vendors/datatables/js/dataTables.scroller.min.js"></script>

        <!--end of plugin scripts-->
        <script type="text/javascript" src="admin/js/pages/datatable.js"></script>
        <script type="text/javascript" src="admin/js/pages/new_dashboard.js"></script>
    </body>
</html>