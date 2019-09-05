package handin6.v2;
import static handin6.v2.Handin6.mysql_password;
import static handin6.v2.Handin6.mysql_url;
import static handin6.v2.Handin6.mysql_user;

import java.sql.*;

public class DatabaseReader {
    
    private String query = "select ContentID, Value from Content where Value > ?";
    
    public void readCommitted() {
            System.out.println("Start of read committed.");
            try {
                long time1 = System.currentTimeMillis();

                Connection con = DriverManager.getConnection( mysql_url, mysql_user, mysql_password );
                con.setTransactionIsolation(Connection.TRANSACTION_READ_COMMITTED);

                PreparedStatement stmt0 = con.prepareStatement( query);
                stmt0.setString(1, "200");
                ResultSet rs0 = stmt0.executeQuery();

                long time2 = System.currentTimeMillis();
                double timeSpent = (time2 - time1) / 1000.0;
                System.out.println("End of read committed. Time spent: " + timeSpent + "s.");
                rs0.close();
                stmt0.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace(); 
            }
    }
   
    public void readUncommitted() {
                System.out.println("Start of read uncommitted.");
                try {
                    long time1 = System.currentTimeMillis();

                    Connection con = DriverManager.getConnection( mysql_url, mysql_user, mysql_password );
                    con.setTransactionIsolation(Connection.TRANSACTION_READ_UNCOMMITTED);

                    PreparedStatement stmt0 = con.prepareStatement(query);
                    stmt0.setString(1, "200");
                    ResultSet rs0 = stmt0.executeQuery();

                    long time2 = System.currentTimeMillis();
                    double timeSpent = (time2 - time1) / 1000.0;
                    System.out.println("End of read uncommitted. Time spent: " + timeSpent + "s.");
                    rs0.close();
                    stmt0.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace(); 
                }
    }
}
