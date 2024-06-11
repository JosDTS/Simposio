/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Users;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Path;

/**
 *
 * @author ESTUDIANTE
 */
public class SaveUsers {
    public boolean save(String userType, String name,
            String email, String password,String identification, String institution, String interestArea,String participantType) {

        try {
            final Path rutaArchivo = new File("D:\\Usuarios\\ESTUDIANTE\\Documents\\NetBeansProjects\\PaginaSimposio\\UsersInformation").toPath(); 
            BufferedWriter writer = new BufferedWriter(
                    new FileWriter(rutaArchivo.toString(),true));

            writer.write(userType +","+ name+","+ email+"," +password+","+identification+","+institution+","+interestArea+","+participantType);
            writer.newLine();
            writer.close();

            System.out.println("Usuario guardado correctamente en el archivo.");
            System.out.println(userType +","+ name+","+ email+"," +password+","+identification+","+institution+","+interestArea+","+participantType);
            return true;
        } catch (IOException e) {
            return false;

        }
    }
}
