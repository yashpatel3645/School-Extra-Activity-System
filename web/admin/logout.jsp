<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            application.setAttribute("admin_name", "logout");
            application.setAttribute("admin_email", null);
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
