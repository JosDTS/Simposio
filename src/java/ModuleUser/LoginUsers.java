/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModuleUser;

import Users.AesEncryption;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Class responsible for handling user login and logout functionality.
 * It uses the AesEncryption class to decrypt the user's email and password
 * stored in a text file.
 * 
 * @author Jocelyn
 * @author Jeison
 * @author Adrian 
 */
public class LoginUsers {

    /**
     * Logs in a user.
     * 
     * @param request The HttpServletRequest object
     * @param password The user's password
     * @param email The user's email address
     * @return true if the user is logged in successfully, false otherwise
     * @throws IOException can throw an IOException if an error occurs while reading the file
     * @throws Exception can throw an Exception if an error occurs during the login process
     */
    public boolean login(HttpServletRequest request, String password, String email) throws IOException, Exception {
        AesEncryption cr = new AesEncryption();
        try {

            File file = new File("C:\\Users\\chava\\OneDrive\\Documentos\\NetBeansProjects\\Simposio\\UsersInformation.txt");

           
            String absolutePath = file.getAbsolutePath();
            System.out.println("Absolute path: " + absolutePath);
            BufferedReader reader = new BufferedReader(
                    new FileReader(absolutePath));
            String line = "";
            while ((line = reader.readLine()) != null) {
                String[] data = line.split(",");
                String emailDecrypt = cr.decrypt(data[2]);
                String passwordDecrypt = cr.decrypt(data[3]);

                if (emailDecrypt.equals(email) && passwordDecrypt.equals(password)) {
                   
                    HttpSession session = request.getSession();
                    session.setAttribute("loggedInUser", email);
                    return true;
                }
            }
            reader.close();
        } catch (IOException iOException) {
        }
        return false;
    }

    /**
     * Checks if a user is currently logged in.
     * 
     * @param request The HttpServletRequest object
     * @return true if the user is logged in, false otherwise
     */
    public boolean isUserLoggedIn(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String loggedInUser = (String) session.getAttribute("loggedInUser");
        return loggedInUser != null;
    }

    /**
     * Logs out the currently logged-in user.
     * 
     * @param request The HttpServletRequest object
     */
    public void logoutUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
    }
}

