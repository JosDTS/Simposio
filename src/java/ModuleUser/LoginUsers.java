/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModuleUser;

import Users.AesEncryption;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

/**
 *
 * @author Jocelyn
 * @author Jeison
 * @author Adrian 
 */
public class LoginUsers {

    public boolean login(String password, String email) throws IOException, Exception {
        AesEncryption cr = new AesEncryption();
        try {
            final Path rutaArchivo = new File("C:\\Users\\Jeison\\Desktop\\Proyecto Web\\Simposio\\UsersInformation.txt").toPath();
            BufferedReader reader = new BufferedReader(
                    new InputStreamReader(Files.newInputStream(rutaArchivo),
                            StandardCharsets.UTF_8));
            String linea = "";
            while ((linea = reader.readLine()) != null) {
                String[] datos = linea.split(",");
                String emailDecrypt = cr.decrypt(datos[2]);
                String passwordDecrypt = cr.decrypt(datos[3]);

                if (emailDecrypt.equals(email) && passwordDecrypt.equals(password)) {
                    return true;
                }
            }
            reader.close();
        } catch (IOException iOException) {
        }
        return false;
    }
}
