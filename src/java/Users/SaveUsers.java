/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Users;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/**
 * Class responsible for saving user information in a text file.
 * It uses the AesEncryption class to encrypt the data before saving it.
 * 
 * @author Jocelyn
 * @author Jeison
 * @author Adrian 
 */
public class SaveUsers {
    
    /**
     * Instance of the AesEncryption class to encrypt the data.
     */
    AesEncryption cr = new AesEncryption();

    /**
     * Saves the user's information in a text file.
     * 
     * @param userType The type of user (e.g., "Student", "Professor", etc.)
     * @param name The user's name
     * @param email The user's email address
     * @param password The user's password
     * @param identification The user's identification (e.g., ID number)
     * @param institution The institution the user belongs to
     * @param interestArea The user's area of interest
     * @param participantType The type of participant (e.g., "Attendee", "Presenter", etc.)
     * @return true if the information was saved successfully, false otherwise
     * @throws Exception can throw an exception if an error occurs while saving the information
     */
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
            
            File file = new File("C:\\Users\\chava\\OneDrive\\Documentos\\NetBeansProjects\\Simposio\\UsersInformation.txt");

            
            String absolutePath = file.getAbsolutePath();
            System.out.println("Absolute path: " + absolutePath);
         
            BufferedWriter writer = new BufferedWriter(
                    new FileWriter(absolutePath, true));
            for (int i = 0; i < myArrayEncrypted.length; i++) {
                writer.write(myArrayEncrypted[i] + ",");
            }
            writer.newLine();
            writer.close();
            return true;
        } catch (IOException e) {
            System.out.println("Error saving the information");
            return false;

        }
    }
}
