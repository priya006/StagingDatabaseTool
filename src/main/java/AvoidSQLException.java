import java.sql.Connection;
import java.sql.DriverManager;
public class AvoidSQLException {
    public static void main(String[]args){
        Connection con = null;
        try {
            con = DriverManager.
                    getConnection("jdbc:mysql://127.0.0.1:3306/DataTool?useSSL=false", "root", "password");
            System.out.println("Connection is successful !!!!!");
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}