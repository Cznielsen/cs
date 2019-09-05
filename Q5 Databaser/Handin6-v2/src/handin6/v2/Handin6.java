package handin6.v2;
import java.sql.*;

public class Handin6 {
    public static String mysql_url = "jdbc:mysql://localhost:3306/sys?autoReconnect=true&useSSL=false";
    public static String mysql_user = "root";
    public static String mysql_password = "1234567890";
    
    public static void main(String[] args) {
        
        DatabaseWriter dbwriter = new DatabaseWriter();
        dbwriter.resetDatabase();
        dbwriter.insertDummyData(10000);
        
        DatabaseReader dbreader = new DatabaseReader();
        dbwriter.startClientWriterThread();
        dbreader.readUncommitted();
        
        // Her bør den egentlig vente på at skrive-tråden er færdig.
        dbwriter.resetDatabase();
        dbwriter.insertDummyData(10000);
        dbreader.readCommitted();
        
        /*
        Hvad jeg gerne vil opnå:
        
        Skriver til databasen i en anden tråd.
            Læser uncommitted.
            Vi viser, hvor mange resultater der er.
        Databasen resettes.
        Skriver til databasen i en anden tråd.
            Læser committed.
            Vi viser, hvor mange resultater der er.
        
        ---------------
            
        Fordi de begge håndterer samme data ville man forestille sig, at
        de giver samme resultat.
        Men fordi den ene håndterer uncommitted data og den anden håndterer committed,
        gør det en forskel, at der samtidig bliver skrevet til databasen.

        Mangler:
        - At der indsættes præcist samme data to gange i træk.
        - At der bliver ventet på at skrive-tråden er færdig med at skrive,
          før databasen bliver genstartet.
        */
    }
}
