/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Checking;

import java.io.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import ModuleUser.LoginUsers;

/**
 * The InscribirseServlet class is a Java Servlet that handles the registration process for activities.
 * It manages the available slots for each activity and the registration of users.
 * @author Jocelyn
 * @author Jeison
 * @author Adrian 
 */
@WebServlet(name = "InscribirseServlet", urlPatterns = {"/InscribirseServlet"})
public class InscribirseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginUsers loginUsers = new LoginUsers();
    private Map<String, Integer> cuposDisponibles;
    private Map<String, List<String>> activityRegistrations;

    /**
     * Initializes the servlet by setting up the available slots for each activity and loading the existing registrations.
     *
     * @throws ServletException if an error occurs during initialization
     */
    @Override
    public void init() throws ServletException {
        super.init();
        cuposDisponibles = new HashMap<>();
        activityRegistrations = new HashMap<>();
        cuposDisponibles.put("1", 30);
        cuposDisponibles.put("2", 30);
        cuposDisponibles.put("3", 0);
        cuposDisponibles.put("4", 30);
        cuposDisponibles.put("5", 30);

        loadRegistrations();
    }

    /**
     * Loads the existing registrations for each activity from text files.
     */
    private void loadRegistrations() {
        for (String activityId : cuposDisponibles.keySet()) {
            String fileName = "D:\\Usuarios\\ESTUDIANTE\\Documents\\NetBeansProjects\\PaginaSimposio\\activity_" + activityId + ".txt";
            File file = new File(fileName);
            List<String> registeredUsers = new LinkedList<>();
            if (file.exists()) {
                try (BufferedReader br = new BufferedReader(new FileReader(file))) {
                    String registeredUser;
                    while ((registeredUser = br.readLine()) != null) {
                        registeredUsers.add(registeredUser);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            activityRegistrations.put(activityId, registeredUsers);
        }
    }

    /**
     * Handles the POST request for the registration process.
     *
     * @param request  the HttpServletRequest object
     * @param response the HttpServletResponse object
     * @throws ServletException if an error occurs during the servlet execution
     * @throws IOException      if an I/O error occurs
     */
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

    if (session == null || session.getAttribute("usuarioLogueado") == null) { // Modificado para usar "usuarioLogueado"
        jsonResponse.append("\"success\": false,");
        jsonResponse.append("\"message\": \"No ha iniciado sesion\"");
    } else {
        String username = (String) session.getAttribute("usuarioLogueado"); // Modificado para usar "usuarioLogueado"

        synchronized (this) {
            int cupos = cuposDisponibles.getOrDefault(activityId, 0);
            if (cupos > 0) {
                List<String> registeredUsers = activityRegistrations.getOrDefault(activityId, new LinkedList<>());

                if (registeredUsers.contains(username)) {
                    jsonResponse.append("\"success\": false,");
                    jsonResponse.append("\"message\": \"Ya está inscrito en esta actividad.\"");
                } else {
                    // Register the user
                    registeredUsers.add(username);
                    activityRegistrations.put(activityId, registeredUsers);

                    // Write to the file
                    String fileName = "D:\\Usuarios\\ESTUDIANTE\\Documents\\NetBeansProjects\\PaginaSimposio\\activity_" + activityId + ".txt";
                    try (BufferedWriter bw = new BufferedWriter(new FileWriter(fileName, true))) {
                        bw.write(username + "\n");
                    }

                    // Update available slots
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

    /**
     * Extracts the activity ID from the request body.
     *
     * @param requestBody the request body
     * @return the activity ID
     */
    private String extractActivityId(String requestBody) {
        String searchString = "\"activityId\":\"";
        int startIndex = requestBody.indexOf(searchString) + searchString.length();
        int endIndex = requestBody.indexOf("\"", startIndex);
        return requestBody.substring(startIndex, endIndex);
    }
}









