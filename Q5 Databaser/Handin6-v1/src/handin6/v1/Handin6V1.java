package handin6.v1;
import java.sql.*;

public class Handin6V1 {

    public static void main(String[] args) {
        
        DatabaseReader dbreader = new DatabaseReader();
        dbreader.readCommitted();
        dbreader.readUncommitted();
    }
    

    
}
