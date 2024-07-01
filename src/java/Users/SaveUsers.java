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

    AesEncryption cr = new AesEncryption();

    public boolean save(String userType, String name,
            String email, String password, String identification, 
            String institution, String interestArea, String participantType)
            throws Exception { 
        String[] myArray = {userType, name, email, password, identification,
                           institution, interestArea, participantType};
            
        String[] myArrayEncrypted = new String[myArray.length];
        for (int i = 0; i < myArray.length; i++) {
            myArrayEncrypted[i] = cr.encrypt(myArray[i]);
        }
        try {
            String directorioDeTrabajo = System.getProperty("UsersInformation.txt");
            System.out.println(directorioDeTrabajo);
            BufferedWriter writer = new BufferedWriter(
            new FileWriter(directorioDeTrabajo, true));
            for (int i = 0; i < myArrayEncrypted.length; i++) {
                writer.write(myArrayEncrypted[i] + ",");
            }         
            writer.newLine();
            writer.close();
            return true;
        } catch (IOException e) {
            System.out.println("Error al guardar");
            return false;

        }
    }
}
