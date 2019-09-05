package handin6.v1;
import java.sql.*;

public class DatabaseReader {
    private String url = "jdbc:mysql://localhost:3306/sys?autoReconnect=true&useSSL=false";
    private String user = "root";
    private String password = "1234567890";
    
    public void readCommitted() {
        System.out.println("Start of read committed.");
        try {
            long time1 = System.currentTimeMillis();
            
            Connection con = DriverManager.getConnection( url, user, password );
            con.setTransactionIsolation(Connection.TRANSACTION_READ_COMMITTED);

            PreparedStatement stmt0 = con.prepareStatement("select BossID, Niceness from bosses where Niceness < ?");
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
            
            Connection con = DriverManager.getConnection( url, user, password );
            con.setTransactionIsolation(Connection.TRANSACTION_READ_UNCOMMITTED);

            PreparedStatement stmt0 = con.prepareStatement("select BossID, Niceness from bosses where Niceness < ?");
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
