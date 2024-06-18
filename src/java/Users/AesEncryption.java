/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Users;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.Key;
import java.util.Base64;

/**
 * The AesEncryption class provides methods to encrypt and decrypt text using
 * the AES algorithm.
 *
 * This class uses a fixed secret key for encryption and decryption.
 *
 * @author Jocelyn
 * @author Jeison
 * @author Adrian
 *
 */
public class AesEncryption {

    private static final String ALGORITHM = "AES";
    private static final String SECRET_KEY = "Cristhoper123456";

    /**
     *
     * Encrypts plain text using the AES algorithm.
     *
     * @param plainText The plain text to be encrypted.
     * @return The Base64 encoded ciphertext.
     * @throws Exception If an error occurs during encryption.
     */
    public static String encrypt(String plainText) throws Exception {

        Key key = new SecretKeySpec(SECRET_KEY.getBytes(), ALGORITHM);
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.ENCRYPT_MODE, key);
        byte[] encryptedBytes = cipher.doFinal(plainText.getBytes());
        return Base64.getEncoder().encodeToString(encryptedBytes);
    }

    /**
     * 
     * Decrypts an encrypted text using the AES algorithm.
     * 
     * @param encryptedText The Base64 encoded encrypted text.
     * @return The decrypted plaintext.
     * @throws Exception If an error occurs during decryption.
     */
    public static String decrypt(String encryptedText) throws Exception {

        Key key = new SecretKeySpec(SECRET_KEY.getBytes(), ALGORITHM);
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.DECRYPT_MODE, key);
        byte[] decryptedBytes = cipher.doFinal(Base64.getDecoder().decode(encryptedText));     
        return new String(decryptedBytes);
    }
}
