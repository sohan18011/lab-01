package dbConnectionTest;

        import java.sql.Connection;
        import java.sql.DatabaseMetaData;
        import java.sql.SQLException;

public class DbConnectionTestMain {
    public static void main(String[] args) throws SQLException {

        Connection conn = DbConnection.getConnection();
        DatabaseMetaData d = conn.getMetaData();

        System.out.println(" Db product name: "+ d.getDatabaseProductName());
        System.out.println(" Db product version: "+ d.getDatabaseProductVersion());
        System.out.println(" Db user name: "+ d.getUserName());
        System.out.println(" Db Driver name: "+ d.getDriverName());
        System.out.println(" Db Driver version name: "+ d.getDriverVersion());
    }
}
