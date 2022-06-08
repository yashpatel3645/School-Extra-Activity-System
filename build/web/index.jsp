<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="com.dao.*" %>
<%@page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Activities</title>
    </head>
    <body>
        <div class="container-fluid" style="margin-top: 70px">
            <%  
                try{
                ResultSet rs = connection.show_activities(1);
                int a = 3;
                while (rs.next()) {
                    
                if(a%3==0){
                    System.out.println("<div class=\"row\" style=\"margin-top: 35px;margin-bottom: 16px\">");
                }
            %>
            <form action="./control">
                <input type="hidden" name="function" value="cart">
                <input type="hidden" name="activity_id" value="<%=rs.getString("activity_id")%>">
                <input type="hidden" name="activity_date1" value="<%=rs.getString("activity_date")%>">
            <div class="col-md-3" style="margin-left: 100px; margin-bottom: 15px;">
                <div class="card payment" >
                    <div class="card-header text-xs-center" style="background-color: #4D4B4B; color: white">
                        <%=rs.getString("activity_name")%>
                    </div>
                    <div class="bg-white">
                        <div class="card-block ">

                            <div class="text-xs-center">
                                <p><strong><%=rs.getString("activity_date")%></strong>

                                </p>
                                <hr>
                                <p><%=rs.getString("activity_detail")%></p>
                                <hr>
                                <div>£<%=rs.getString("activity_price")%></div>
                            </div>
                        </div>
                        <%
                            if (application.getAttribute("user_name") == null || application.getAttribute("user_name").toString().equals("logout")) {
                        %>
                        <div class="card-footer bg-white text-xs-center">
                            <button type="button" id="aria" class="btn btn-default micheal_btn" data-toggle="<%=toggle%>" data-target="<%=target%>" aria-expanded="false" 
                                    style="background-color: #158e06 !important; color: white;padding-left: 30px;padding-right: 30px !important; margin-right: 0px">Add to cart</button>
                        </div>
                        <%
                        } else {
                        %>
                        <div class="card-footer bg-white text-xs-center">
                            <button class="btn btn-block get_plan_warning " style="background-color: #158e06; color: white">Add to cart</button>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
            </form>
            <%
                if(a%3==0){
                    System.out.println("</div>");
                }
                
                a++;
                    
                }
}catch(Exception e){
System.out.print(e);
}
            %>
            
        </div>
        <!-- global scripts-->
        <script type="text/javascript" src="admin/js/components.js"></script>
        <script type="text/javascript" src="admin/js/custom.js"></script>
        <!-- end of global scripts-->
    </body>
</html>