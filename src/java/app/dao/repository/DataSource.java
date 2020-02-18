package app.dao.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataSource implements AutoCloseable {
    // JDBC driver name and database URL

    private Connection connection = null;

    public DataSource() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (IllegalAccessException | InstantiationException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection()
    {
        try {
            if( connection == null ) {
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/energoauditukr", "root",  "6587");
            }
        }
        catch( SQLException e ) {
            System.out.println("Error Occured " + e.toString());
        }
        return connection;
    }

    @Override
    public void close() throws Exception {
        try {
            if(connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
