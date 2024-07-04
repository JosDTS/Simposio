/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Checking;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
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
    private Map<String, Integer> cuposDisponibles;

    @Override
    public void init() throws ServletException {
        super.init();
        cuposDisponibles = new HashMap<>();
        cuposDisponibles.put("1", 30);  
        cuposDisponibles.put("2", 30);  
        cuposDisponibles.put("3", 0);  
        cuposDisponibles.put("4", 30);  
        cuposDisponibles.put("5", 30);  
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false); 
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
        String activityId = extractActivityId(requestBody);

        StringBuilder jsonResponse = new StringBuilder();
        jsonResponse.append("{");

     
        if (session == null || session.getAttribute("usuarioLogueado") == null) {
            jsonResponse.append("\"success\": false,");
            jsonResponse.append("\"message\": \"No ha iniciado sesión\"");
        } else {
            String username = (String) session.getAttribute("usuarioLogueado");

            
            synchronized (this) {
                int cupos = cuposDisponibles.getOrDefault(activityId, 0);
                if (cupos > 0) {
                    String fileName = "C:\\Users\\chava\\OneDrive\\Documentos\\NetBeansProjects\\Simposio\\activity_" + activityId + ".txt";
                    File file = new File(fileName);

                    boolean isAlreadyRegistered = false;
                    if (file.exists()) {
                        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
                            String registeredUser;
                            while ((registeredUser = br.readLine()) != null) {
                                if (registeredUser.equals(username)) {
                                    isAlreadyRegistered = true;
                                    break;
                                }
                            }
                        }
                    }

                    if (isAlreadyRegistered) {
                        jsonResponse.append("\"success\": false,");
                        jsonResponse.append("\"message\": \"Ya está inscrito en esta actividad.\"");
                    } else {
                        // Registrar al usuario
                        try (BufferedWriter bw = new BufferedWriter(new FileWriter(fileName, true))) {
                            bw.write(username + "\n");
                        }

                        
                        cuposDisponibles.put(activityId, cupos - 1);

                        jsonResponse.append("\"success\": true,");
                        jsonResponse.append("\"message\": \"Inscripción exitosa.\",");
                        jsonResponse.append("\"cuposRestantes\": ").append(cupos - 1);
                    }
                } else {
                    jsonResponse.append("\"success\": false,");
                    jsonResponse.append("\"message\": \"Lo sentimos, no hay cupos disponibles.\"");
                }
            }
        }

        jsonResponse.append("}");
        out.print(jsonResponse.toString());
        out.flush();
    }

    private String extractActivityId(String requestBody) {
        String searchString = "\"activityId\":\"";
        int startIndex = requestBody.indexOf(searchString) + searchString.length();
        int endIndex = requestBody.indexOf("\"", startIndex);
        return requestBody.substring(startIndex, endIndex);
    }
}








