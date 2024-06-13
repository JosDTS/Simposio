<%-- 
    Document   : Login
    Created on : 11 jun. 2024, 16:16:56
    Author     : ESTUDIANTE
--%>

<%@page import="ModuleUser.LoginUsers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            LoginUsers lg = new LoginUsers();
            if (lg.login(password, email)) {
                session.setAttribute("usuarioLogueado", email);
                String url = "index.html";
                response.sendRedirect(url);
            } else {
                String url = "RegistrationGraphic.jsp";
                response.sendRedirect(url);
            }

        %>
    </body>
</html>
