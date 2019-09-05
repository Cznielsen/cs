package dSik_assignment_1;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Random;

/**
 * Created by Alex Hansen, Alexandra Hou, Christian Z. Nielsen & Johan Knudsen on 15/04/2017
 * dSik Assignment 1.
 */

public class RSA {
    Random random;

    // e == 3
    public RSA() {
        random = new Random();
    }
    /**
     * Please choose k bit length as first argument and the message (in numbers pls) as second argument
     */
    public static void main(String[] args) {

        RSA rsa = new RSA();
        BigInteger[][] keys = rsa.keyGen(Integer.parseInt(args[0])); // keys from keygen
        BigInteger m = new BigInteger(args[1]);
        BigInteger c = rsa.encrypt(keys[0],m);

        //testing
        BigInteger m1 = rsa.decrypt(keys[1],c);
        System.out.println("Message: "+m);
        System.out.println("Cipher: "+c);
        System.out.println("Testmessage (the cipher decrypted): "+m1);


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

    public BigInteger encrypt(BigInteger[] publicKey, BigInteger message){
        return message.modPow(publicKey[1],publicKey[0]);
    }

    public BigInteger decrypt(BigInteger[] privateKey, BigInteger cipher){
        return cipher.modPow(privateKey[1], privateKey[0]);
    }

}
