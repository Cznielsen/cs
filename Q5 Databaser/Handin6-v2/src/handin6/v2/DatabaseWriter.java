package handin6.v2;

import java.math.BigInteger;
import static handin6.v2.Handin6.mysql_password;
import static handin6.v2.Handin6.mysql_url;
import static handin6.v2.Handin6.mysql_user;
import java.sql.*;
import java.util.Random;

public class DatabaseWriter {
    private Random originalRandom = new Random(151515);
    
    public void startClientWriterThread()
    {
        System.out.println("Starting writer thread.");
        Thread childThread = new Thread(new Runnable(){
            public void run() {
                try {
                    Connection con = DriverManager.getConnection( mysql_url, mysql_user, mysql_password );
                    PreparedStatement stmt = con.prepareStatement(
                        "UPDATE Content"
                        + "SET Value = 0"
                        + "WHERE Value < 500;"
                    );
                    stmt.executeQuery();
                    stmt.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }}});
        childThread.start();
    }
    
    public void resetDatabase() {
        System.out.println("Resetting database...");
        try {
            Connection con = DriverManager.getConnection( mysql_url, mysql_user, mysql_password );
            PreparedStatement stmt = con.prepareStatement(
            "DROP TABLE IF EXISTS Content;");
            stmt.execute();
            stmt = con.prepareStatement(
             "CREATE TABLE Content("
             + "ContentID int,"
             + "Value int,"
             + "Name VARCHAR(32),"
             + "PRIMARY KEY(ContentID));"
            );
            stmt.execute();
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void insertDummyData(int numberOfEntries)
    {
        System.out.println("Inserting dummy data into database...");
        try {
            Connection con = DriverManager.getConnection( mysql_url, mysql_user, mysql_password );
            
            Random random = originalRandom;
            
            for (int i = 0; i < numberOfEntries; ++i)
            {
                PreparedStatement pstmt = con.prepareStatement("INSERT INTO Content VALUES(?,?,?)");
                pstmt.setInt(1, i);
                pstmt.setInt(2, (int)(Math.random() * 9000));
                pstmt.setString(3, new BigInteger(130, random).toString(32));
                pstmt.executeUpdate();
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
