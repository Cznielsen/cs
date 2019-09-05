package dSik_assignment_4;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.net.ServerSocket;
import java.net.Socket;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Random;

/**
 * Created by Alex Hansen, Alexandra Hou, Christian Z. Nielsen & Johan Knudsen on 24/04/2017
 * dSik Assignment 4.
 */


public class RSA3 {
    Random random;
    MessageDigest md;
    BigInteger p = BigInteger.valueOf(299674547);
    BigInteger g = BigInteger.valueOf(9827342);
    int portNumber = 40499;
    protected ServerSocket serverSocket;

    // e == 3
    public RSA3() {
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
        RSA3 rsa3 = new RSA3();
        BigInteger[][] keys = rsa3.keyGen(Integer.parseInt(args[0])); // keys from keygen
        try {
            if (args[1].equals("server")) {
                rsa3.serverAKE(keys[0], keys[1]);
            } else if (args[1].equals("client")) {
                rsa3.clientAKE(args[2], keys[0], keys[1]);
            }
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    // Generates private- and public keys

    // public key
    // BigInteger[0][0] = n
    // BigInteger[0][1] = e

    // private key
    // BitInteger[1][0] = n
    // BigInteger[1][1] = d

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

        return hash.modPow(privateKey[1], privateKey[0]);
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

    public void clientAKE(String serverName, BigInteger[] publicKey, BigInteger[] privateKey) throws IOException, ClassNotFoundException {
        Socket socket = connectToServer(serverName);

        ObjectOutputStream oos = new ObjectOutputStream(socket.getOutputStream());
        ObjectInputStream ois = new ObjectInputStream(socket.getInputStream());

        BigInteger a = BigInteger.valueOf(random.nextInt(1000)+10);

        BigInteger gC = g.modPow(a, p);
        BigInteger[] m1 = new BigInteger[3];
        m1[0] = publicKey[0];
        m1[1] = publicKey[1];
        m1[2] = gC;

        //Send m1 to S
        oos.writeObject(m1);

        //Receive m2 from S
        BigInteger[] m2 = (BigInteger[]) ois.readObject();

        BigInteger[] serverPublicKey = new BigInteger[2];
        serverPublicKey[0] = m2[0];
        serverPublicKey[1] = m2[1];

        //Generate key
        BigInteger k = m2[2].modPow(a, p);
        System.out.println("Client generated key: "+k);

        BigInteger[] cV = new BigInteger[12];
        for (int i = 0; i<3; i++) {
            cV[i] = m1[i];
            cV[i+3] = m2[i];
        }

        //Send view
        for (int i = 0; i < 6; i++) {
            BigInteger h = sign(privateKey, cV[i]);
            cV[i+6] = h;
            oos.writeObject(h);
        }

        //Verify S's view
        for (int i = 0; i<12; i++) {
            BigInteger sV = (BigInteger) ois.readObject();
            System.out.println(verify(serverPublicKey, sV, cV[i]));
        }

        ois.close();
        oos.close();
        socket.close();
    }

    public void serverAKE(BigInteger[] publicKey, BigInteger[] privateKey) throws IOException, ClassNotFoundException {
        registerOnPort();
        Socket socket = waitForConnectionFromClient();

        ObjectOutputStream oos = new ObjectOutputStream(socket.getOutputStream());
        ObjectInputStream ois = new ObjectInputStream(socket.getInputStream());

        //Receive m1 from C
        BigInteger[] m1 = (BigInteger[]) ois.readObject();
        BigInteger[] clientPublicKey = new BigInteger[2];
        clientPublicKey[0] = m1[0];
        clientPublicKey[1] = m1[1];

        //Time to send back to the client
        BigInteger b = BigInteger.valueOf(random.nextInt(1000)+10);
        BigInteger gS = g.modPow(b, p);
        BigInteger[] m2 = new BigInteger[3];
        m2[0] = publicKey[0];
        m2[1] = publicKey[1];
        m2[2] = gS;

        //Send m2 to C
        oos.writeObject(m2);

        //Generate key
        BigInteger k = m1[2].modPow(b, p);
        System.out.println("Server generated key: "+k);

        BigInteger[] sV = new BigInteger[12];
        for (int i = 0; i<3; i++) {
            sV[i] = m1[i];
            sV[i+3] = m2[i];
        }

        //Verify C's view
        for (int i = 0; i<6; i++) {
            BigInteger cV = (BigInteger) ois.readObject();
            System.out.println(verify(clientPublicKey, cV, sV[i]));
            sV[i+6] = cV;
        }

        //Send view
        for (int i = 0; i<12; i++) oos.writeObject(sign(privateKey, sV[i]));

        ois.close();
        oos.close();
        socket.close();
        deregisterOnPort();
    }

    protected void registerOnPort() {
        try{
            serverSocket = new ServerSocket(portNumber);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void deregisterOnPort() {
        if (serverSocket != null) {
            try {
                serverSocket.close();
                serverSocket = null;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    protected Socket waitForConnectionFromClient() {
        Socket res = null;
        try {
            res = serverSocket.accept();
        } catch (IOException e) {
            // We return null on IOExceptions
        }
        return res;
    }

    protected Socket connectToServer(String serverName) {
        Socket res = null;
        try {
            res = new Socket(serverName,portNumber);
        } catch (IOException e) {
            // We return null on IOExceptions
        }
        return res;
    }

}
