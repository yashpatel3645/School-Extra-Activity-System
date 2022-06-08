<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            application.setAttribute("user_name", null);
            application.setAttribute("user_email", null);
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
