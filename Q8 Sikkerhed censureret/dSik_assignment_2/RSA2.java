package dSik_assignment_2;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Random;

/**
 * Created by Alex Hansen, Alexandra Hou, Christian Z. Nielsen & Johan Knudsen on 24/04/2017
 * dSik Assignment 2.
 */


public class RSA2 {
    Random random;
    MessageDigest md;

    // e == 3
    public RSA2() {
        random = new Random();

        try {
            md = MessageDigest.getInstance("SHA-256"); //Instantiates a MessageDigest object, which we use to hash our messages
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            System.out.println("Algorithm not found");
        }

    }
    /**
     * Please choose k bit length as first argument and the message (in numbers pls) as second argument
     */
    public static void main(String[] args) {

        RSA2 rsa2 = new RSA2();
        BigInteger[][] keys = rsa2.keyGen(Integer.parseInt(args[0])); // keys from keygen
        BigInteger m = new BigInteger(args[1]);
        BigInteger s = rsa2.sign(keys[1], m); // Hashes and signs the message
        BigInteger c = rsa2.encrypt(keys[0],m);

        //Test signature
        System.out.println("\nTEST: accepting state \n");

        if (rsa2.verify(keys[0], s, m)) { //Verifies the signed message and only decrypts if the signature is accepted.
            System.out.println("Signature accepted!");
            System.out.println("Decrypting");

            //testing encrypt/decrypt
            BigInteger m1 = rsa2.decrypt(keys[1],c);
            System.out.println("Message: "+m);
            System.out.println("Cipher: "+c);
            System.out.println("Testmessage (the cipher decrypted): "+m1+"\n \n");
        }
        else
            System.out.println("Signature rejected! ");

        // Testing a modified message (should reach rejecting state)
        System.out.println("TEST: rejecting state \n");

        BigInteger modified = new BigInteger("1238612371283612837"); // Fixed modified message
        if (rsa2.verify(keys[0], s, modified)) {
            System.out.println("Signature accepted!");
        }
        else {
            System.out.println("Signature rejected! \n \n");
        }

        System.out.println("NOW TESTING HASHING SPEED (SUBASSIGNMENT 2): \n");
        rsa2.hashSpeed(); //Runs the hash-speed test.


    }

    // Generates private- and public keys
    // BigInteger[0][0] + [0][1] = offentlig nøgle
    // BitInteger[1][1] = privat nøgle

    /** Generates a public-key and private-key from modulo bit-length.
     *
     * @param k modulo bit-length
     * @return  returns a 2-dimensional array of public key and private key
     */

    public BigInteger[][] keyGen(int k) {
        BigInteger[][] result = new BigInteger[2][2];

        BigInteger p, q, n;
        BigInteger d = null;
        BigInteger e = new BigInteger("3");

        // finds p
        while (true) {
            p = BigInteger.probablePrime(random.nextInt(k-2), new SecureRandom());

            if (p.gcd(e).intValue() == 1) {
                break;
            }

        }

        // Finds q and n
        while (true) {
            q = BigInteger.probablePrime(k - p.bitLength(), new SecureRandom());

            n = q.multiply(p);

            if (p.gcd(e).intValue() == 1 &&
                    n.bitLength() == k) {
                break;
            }
        }

        //Adds results to two-dimensional array (vector)
        result[0][0] = n;
        result[0][1] = e;


        // COMMENCE PRIVATE KEY

        // d = e^-1 mod (p-1)(q-1)
        try{
            d = e.modInverse((p.subtract(BigInteger.ONE)).multiply((q.subtract(BigInteger.ONE))));
        } catch (Exception exception){
            System.out.println("Primes don't match. Trying again ...");
            return keyGen(k);
        }


        result[1][0] = n;
        result[1][1] = d;

        System.out.println("e = " + e + "\np = " + p + "\nq = " + q + "\nn = " + n + "\nd = " + d);
        System.out.println("Public key is: ("+n+","+e+").");
        System.out.println("Private key is: ("+n+","+d+").");

        return result;
    }

    /** Encrypts a given message using RSA
     *
     * @param publicKey The public key in the form of a BigInteger-array. Index 0 is n, and index 1 is e.
     * @param message The message to be encrypted.
     * @return Returns the encrypted message.
     */
    public BigInteger encrypt(BigInteger[] publicKey, BigInteger message){
        return message.modPow(publicKey[1],publicKey[0]);
    }

    /** Decrypts an encrypted message using RSA
     *
     * @param privateKey The private key in the form of a BigInteger-array. Index 0 is n, and index 1 is d.
     * @param cipher The ciphertext from the encrypt method.
     * @return Returns the cleartext deciphered from the ciphertext.
     */
    public BigInteger decrypt(BigInteger[] privateKey, BigInteger cipher){
        return cipher.modPow(privateKey[1], privateKey[0]);
    }

    /** Hashes message using a MessageDigest instance and then signs the hash-value using RSA.
     *
     * @param privateKey The private key in the form of a BigInteger-array. Index 0 is n, and index 1 is d.
     * @param message The message to be signed (before encryption).
     * @return Returns a signature of the hashed message.
     */
    public BigInteger sign(BigInteger[] privateKey, BigInteger message){

        BigInteger hash = new BigInteger(1, md.digest(message.toByteArray())); //Hashing

        double t0 = System.currentTimeMillis();  // measures time (start)
        BigInteger signature = hash.modPow(privateKey[1], privateKey[0]); // The signing itself.
        double t1 = System.currentTimeMillis();
        System.out.println("\nSubassignment 3:");
        System.out.println("Time spent creating signature: "+ (t1-t0)+"ms."); //measures time (end)

        return signature;
    }

    /** Verifies a signature using RSA.
     *
     * Does this by creating a copy of the original message and then hashing it using the same hash-function. Afterwards
     * it compares the two hash-values.
     *
     * @param publicKey The public key in the form of a BigInteger-array. Index 0 is n, and index 1 is e.
     * @param hash The hashed value that needs to be verified.
     * @param message The original message (pre-hashing).
     * @return Returns true if the message has not been altered and false if it has.
     */
    public boolean verify(BigInteger[] publicKey, BigInteger hash, BigInteger message){
        BigInteger temp = new BigInteger(1, md.digest(message.toByteArray())); // Creates hashed copy of original message

        if(hash.modPow(publicKey[1], publicKey[0]).equals(temp)) // Compares received hash with self-made.
            return true;

        else
            return false;
    }

    /**
     * Test hashing speed (seperate method, subassignment 2)
     */
    private void hashSpeed(){
        random = new Random();
        BigInteger hash = new BigInteger(80000, random); // 10KBytes = 10*1000*8
        double t0 = System.currentTimeMillis();

        try {
            MessageDigest.getInstance("SHA-256").digest(hash.toByteArray());
            double t1 = System.currentTimeMillis();
            System.out.println("Time used to hash 10KB: "+(t1-t0)+"ms.");
            System.out.println("Which is: "+ (80000/((t1-t0)/1000))+ " bits/second");

        } catch (NoSuchAlgorithmException e) {
            System.out.println("Damn son, y u no work");
            e.printStackTrace();
        }

    }

    /**
     * SUBASSIGNMENT 4
     *
     * The time used to sign the hash was approximately 30 ms, since we can sign up to 2000 bits using this method we
     * get 2000/0,03 = 66.666 bits/second
     *
     * Since hashing takes 2.0E7 bits/second it is much more efficient to hash than sign long messages, making it
     * feasible to hash messages over a certain size before signing them.
     */

}
