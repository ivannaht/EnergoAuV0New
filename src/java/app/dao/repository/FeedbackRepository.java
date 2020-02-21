package app.dao.repository;

import app.dao.entity.Institution;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class FeedbackRepository {
    public static void addFeedback(String First_Name, String Last_Name, String Email, String Subject, String Comments) {
        Connection connection = null;
        Statement stmt = null;
        DataSource dataSource = new DataSource();
        try {
            connection = dataSource.getConnection();
            stmt = connection.createStatement();
            stmt.executeUpdate("INSERT INTO feedback (First_Name, Last_Name, Email, Subject, Comments)" +
                    "VALUES ('" + First_Name + "','" + Last_Name + "', '" + Email + "','" + Subject + "','" + Comments + "')");

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (connection != null) connection.close();
                if (stmt != null) stmt.close();
            } catch (SQLException exc) {
            }
        }
    }
}

