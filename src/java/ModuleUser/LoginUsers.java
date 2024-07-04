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
    public boolean login(HttpServletRequest request, String password, String email) throws IOException, Exception {
        AesEncryption cr = new AesEncryption();
        try {
            File file = new File("D:\\Usuarios\\ESTUDIANTE\\Documents\\NetBeansProjects\\PaginaSimposio\\UsersInformation.txt");
            String absolutePath = file.getAbsolutePath();
            System.out.println("Absolute path: " + absolutePath);
            BufferedReader reader = new BufferedReader(new FileReader(absolutePath));
            String line = "";
            while ((line = reader.readLine()) != null) {
                String[] data = line.split(",");
                String emailDecrypt = cr.decrypt(data[2]);
                String passwordDecrypt = cr.decrypt(data[3]);

                if (emailDecrypt.equals(email) && passwordDecrypt.equals(password)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("usuarioLogueado", emailDecrypt); // Modificado para usar "usuarioLogueado"
                    return true;
                }
            }
            reader.close();
        } catch (IOException iOException) {
        }
        return false;
    }

    public boolean isUserLoggedIn(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String loggedInUser = (String) session.getAttribute("usuarioLogueado"); // Modificado para usar "usuarioLogueado"
        return loggedInUser != null;
    }

    public void logoutUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
    }
}

