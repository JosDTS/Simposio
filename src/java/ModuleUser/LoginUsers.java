/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModuleUser;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

/**
 *
 * @author ESTUDIANTE
 */
public class LoginUsers {
    public boolean login(String password, String user) throws IOException{
        
        try {
            final Path rutaArchivo = new File("D:\\Usuarios\\ESTUDIANTE\\Documents\\NetBeansProjects\\PaginaSimposio\\UsersInformation").toPath();            
            BufferedReader reader = new BufferedReader(
                    new InputStreamReader(Files.newInputStream(rutaArchivo),
                            StandardCharsets.UTF_8));
            String linea = "";
            while ((linea = reader.readLine()) != null) {                
                String[] datos = linea.split(",");
                System.out.println(linea);
                String correo = datos[2];                
                String contraseña = datos[3];                
                
                 System.out.println(datos[2]);
                 System.out.println(datos[3]);
                 System.out.println("pasword a comparar: "+ password);
                 System.out.println("email a comparar: "+ user);
                if (correo.equals(user) && contraseña.equals(password)) {
                     System.out.println(datos[2]);
                      System.out.println(datos[3]);
                    return true; 
                    
                }
            }
            reader.close();
            
                       
        } catch (IOException iOException) {
            
        }
        return false; 
    }
}

