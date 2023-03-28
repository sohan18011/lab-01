package dbConnectionTest;

        import java.sql.Connection;
        import java.sql.DriverManager;
        import java.sql.SQLException;
public class DbConnection {
    private static String dbUrl = "jdbc:mysql://localhost:3306/test";
    private static String dbUsername = "root";
    private static String dbPass= "";

    public static Connection getConnection() throws SQLException {
        Connection connection = DriverManager.getConnection(
                dbUrl, dbUsername, dbPass
        );
        System.out.println("Successfully connected to MySQL Database.");
        return connection;
    }
}

