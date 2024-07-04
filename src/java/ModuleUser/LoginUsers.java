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
            System.out.println("Ruta absoluta: " + absolutePath);
            BufferedReader reader = new BufferedReader(
                    new FileReader(absolutePath));
            String linea = "";
            while ((linea = reader.readLine()) != null) {
                String[] datos = linea.split(",");
                String emailDecrypt = cr.decrypt(datos[2]);
                String passwordDecrypt = cr.decrypt(datos[3]);

                if (emailDecrypt.equals(email) && passwordDecrypt.equals(password)) {
                   
                    HttpSession session = request.getSession();
                    session.setAttribute("usuarioLogueado", email);
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
        String usuarioLogueado = (String) session.getAttribute("usuarioLogueado");
        return usuarioLogueado != null;
    }

    public void logoutUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
    }
}
