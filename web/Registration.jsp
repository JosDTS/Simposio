<%-- 
    Document   : Registration
    Created on : 11 jun. 2024, 15:46:27
* @author Jocelyn
 * @author Jeison
 * @author Adrian 
--%>

<%@page import="Users.SaveUsers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>     
         <%
            String userType = request.getParameter("userType");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String identification = request.getParameter("idNumber");
            String institution = request.getParameter("institution"); 
            String interestArea = request.getParameter("interestArea"); 
            String participantType = request.getParameter("participantType"); 
             
           
            SaveUsers gu = new SaveUsers();
            boolean bandera = gu.save(userType, name, email, password,
                    identification,institution,interestArea, participantType);
            if (bandera) {
                  String url = "index.html";
                  response.sendRedirect(url);
                    
                }else{
                String url = "RegistrationGraphic.jsp";
                response.sendRedirect(url);
            }
        %>
    </body>
</html>
