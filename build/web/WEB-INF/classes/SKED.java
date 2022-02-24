
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Scanner;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mahes
 */
public class SKED {
    private static final String AES = "AES";
    private static final String AES_CIPHER_ALGORITHM = "AES/CBC/PKCS5PADDING";
    private static Scanner message;
    private static SecretKeySpec secretKey;
    private static byte[] key;
    
    public static SecretKey createAESKey()
        throws Exception
    {
         MessageDigest sha = null;
        String myKey="ABCDEFG";
        
            key = myKey.getBytes("UTF-8");
            sha = MessageDigest.getInstance("SHA-256");
            key = sha.digest(key);
            key = Arrays.copyOf(key, 16); 
            secretKey = new SecretKeySpec(key, "AES");
        
 
        return secretKey;
    }
}
