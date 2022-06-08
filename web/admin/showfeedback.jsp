<%@page import="com.dao.*" %>
<%@page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<%@ include file="side-bar.jsp" %>
<!DOCTYPE html>
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
        if(application.getAttribute("admin_name")==null || application.getAttribute("admin_name").toString().equals("logout"))
        {
            response.sendRedirect("login.jsp");
        }
    %>
        <div id="content" class="bg-container fixed_header_menu_conainer fixed_header_menu_page">
            <div class="inner bg-light lter bg-container ">
                <div class="row">
                    <div class="col-xs-12 data_tables">
                        <div class="card m-t-35" style="margin-top: 54px; margin-bottom: 12px">
                            <div class="card-header bg-white">
                                <i class="fa fa-table"></i> Feedback

                            </div>
                            <div class="card-block p-t-10">
                                <div class=" m-t-25">
                                    <table  class="table table-striped table-bordered table-hover" id="sample_6">
                                        <thead>
                                            <tr>
                                                <th>No.</th>
                                                <th>Name</th>
                                                <th class="hidden-xs">Email</th>
                                                <th class="hidden-xs">Message</th>
                                                <th class="hidden-xs">Created Date</th>
                                                <th>Manage</th>
                                            </tr>
                                        </thead>
                                        <%
                                            ResultSet rs = connection.getfeedback(1);
                                            int i = 1;
                                            while (rs.next()) {
                                        %>

                                        <tr>
                                            <td><%=i%></td>
                                            <td><%=rs.getString("user_name")%></td>
                                            <td><%=rs.getString("user_email")%></td>
                                            <td><%=rs.getString("user_message")%></td>
                                            <td><%=rs.getString("created_date")%></td>
                                            <td>
                                                <form action="../control" method="post">
                                                    <input type="hidden" name="function" value="deactive">
                                                    <input type="hidden" name="deactiveid" value="<%=rs.getString("user_email")%>">
                                                    <button type="submit" class="btn btn-danger">De-active</button>
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
                    </div>
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