/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Checking;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ModuleUser.LoginUsers;

@WebServlet(name = "InscribirseServlet", urlPatterns = {"/InscribirseServlet"})
public class InscribirseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginUsers loginUsers = new LoginUsers();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

     
        StringBuilder sb = new StringBuilder();
        String line;
        try (BufferedReader reader = request.getReader()) {
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
        }
        String requestBody = sb.toString();

      
        String activityName = extractActivityName(requestBody);

        
        StringBuilder jsonResponse = new StringBuilder();
        jsonResponse.append("{");

        if (loginUsers.isUserLoggedIn(request)) {
            String username = (String) session.getAttribute("usuarioLogueado");

            
            try (FileWriter fileWriter = new FileWriter("C:\\Users\\chava\\OneDrive\\Documentos\\NetBeansProjects\\Simposio\\activities.txt", true)) {
                fileWriter.write(username + " - " + activityName + "\n");
            }

            jsonResponse.append("\"success\": true,");
            jsonResponse.append("\"message\": \"Inscripción exitosa\"");
        } else {
            jsonResponse.append("\"success\": false,");
            jsonResponse.append("\"message\": \"No ha iniciado sesión\"");
        }

        jsonResponse.append("}");
        out.print(jsonResponse.toString());
        out.flush();
    }

    private String extractActivityName(String requestBody) {
        String searchString = "\"activityName\":\"";
        int startIndex = requestBody.indexOf(searchString) + searchString.length();
        int endIndex = requestBody.indexOf("\"", startIndex);
        return requestBody.substring(startIndex, endIndex);
    }
}
