<%-- 
    Document   : dijkstra
    Created on : 3 jul. 2024, 16:24:15
    Author     : Sheys
--%>
<%@page import="Dijkstra.Dijkstra"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
    String startVertex = request.getParameter("startVertex");
    String endVertex = request.getParameter("endVertex");

    //Dijkstra dks = new Dijkstra();
    //String shortestPath = dks.calcularRutaMasCorta(startVertex, endVertex );
    //double distancia = dks.calcularDistancia(startVertex, endVertex);

  
%>

    </body>
</html>
