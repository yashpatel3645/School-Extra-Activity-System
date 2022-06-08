<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="com.dao.*" %>
<%@page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<html>
    <head>
        <title>Activities</title>
    </head>
    <body>
        <div class="row" style="margin-top: 45px;margin-left: 15px;margin-right: 15px">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header bg-white">
                        <strong>Order Summary</strong>
                    </div>
                    <div class="card-block m-t-35">
                        <div class="table-responsive">
                            <table class="table table-sm">
                                <thead>
                                    <tr>
                                        <td>
                                            <strong>Activity Name</strong>
                                        </td>
                                        <td>
                                            <strong>Activity Date</strong>
                                        </td>
                                        <td class="text-center">
                                            <strong>Activity Price</strong>
                                        </td>
                                        <td></td>
                                        <td class="text-right">
                                            <strong>Activity Price</strong>
                                        </td>
                                        <td></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%                                    
                                        ResultSet rs = connection.give_cart(application.getAttribute("user_id").toString());
                                        int total = 0;
                                        while (rs.next()) {
                                            ResultSet rs1 = connection.show_user_cart(1, Integer.parseInt(rs.getString("activity_id")));
                                            rs1.next();
                                    %>
                                    <tr>
                                        <td><%=rs1.getString("activity_name")%></td>
                                        <td><%=rs1.getString("activity_date")%></td>
                                        <td class="text-center"><%=rs1.getString("activity_detail")%></td>
                                        <td></td>
                                        <td class="text-right" id="price">£<%=rs1.getString("activity_price")%></td>
                                        <td>
                                            <form action="./control">
                                                <input type="hidden" name="function" value="deletecart">
                                                <input type="hidden" name="user_id" value="<%=application.getAttribute("user_id")%>">
                                                <input type="hidden" name="activity_id" value="<%=rs1.getString("activity_id")%>">
                                                <input type="hidden" name="activity_date1" value="<%=rs1.getString("activity_date")%>">
                                                <button type="submit" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></button>
                                            </form>
                                        </td>
                                    </tr>
                                    <%
                                        total = total + Integer.parseInt(rs1.getString("activity_price"));
                                        }
                                    %>
                                    <tr>
                                        <td class="emptyrow">
                                            <i class="livicon" data-name="barcode" data-size="60" data-loop="true"></i>
                                        </td>
                                        <td class="emptyrow"></td>
                                        <td class="emptyrow text-center"></td>
                                        <td class="emptyrow text-right">
                                            <strong>Total &nbsp;</strong>
                                        </td>
                                        <td class="highrow text-right">
                                            <strong>£<%=total%></strong>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-sm-6">
                <form action="./control">
                    <input type="hidden" name="function" value="payment">
                    <input type="hidden" name="user_id" value="1">
                    <input type="hidden" name="payment_type" value="Online">
                    <button type="submit" class="btn  button-alignment btn-success m-t-15" style="float: right;margin-right: 80px;
                            background-color:#4d4b4b !important;border-color: #4d4b4b">
                        Pay Online
                    </button>
                </form>
                <form action="./control">
                    <input type="hidden" name="function" value="payment">
                    <input type="hidden" name="user_id" value="1">
                    <input type="hidden" name="payment_type" value="Cash">
                    <button type="submit" class="btn  button-alignment btn-success m-t-15" style="float: right;margin-right: 80px;
                            border-color: #4d4b4b;background-color:#4d4b4b !important;">
                        Pay in School
                    </button>
                </form>
            </div>
            <!-- global scripts-->
            <script type="text/javascript" src="admin/js/components.js"></script>
            <script type="text/javascript" src="admin/js/custom.js"></script>
            <!-- end of global scripts-->
    </body>
</html>