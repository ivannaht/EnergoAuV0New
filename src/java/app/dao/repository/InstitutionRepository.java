package app.dao.repository;

import app.dao.entity.Institution;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class InstitutionRepository {

    public Institution getByLoginByPassword(String Login, String Password) {
        DataSource dataSource = new DataSource();
        try {
            Connection connection = dataSource.getConnection();
            Statement stmt =connection.createStatement();
            ResultSet rsSign =stmt.executeQuery("SELECT Login, Password, Name_of_institution, Head_of_institution, Phone_number " +
                    "FROM institution " +
                    "WHERE institution.Login='" + Login + "' AND institution.Password='" + Password + "'");
            while (rsSign.next()){
                Institution institution = new Institution(
                        rsSign.getString("Login"),
                        rsSign.getString("Password"),
                        rsSign.getString("Name_of_institution"),
                        rsSign.getString("Head_of_institution"),
                        rsSign.getString("Phone_number")
                );
                return institution;
            }
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void addInstitution(String Login, String Password, String Name_of_institution, String Head_of_institution, String Phone_number) {
        Connection connection = null;
        Statement stmt = null;
        DataSource dataSource = new DataSource();
        try {
            connection = dataSource.getConnection();
            stmt = connection.createStatement();
            stmt.executeUpdate("INSERT INTO institution (Login, Password, Name_of_institution, Head_of_institution, Phone_number)" +
                    "VALUES ('" + Login + "','" + Password + "', '" + Name_of_institution + "','" + Head_of_institution + "','" + Phone_number + "')");

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

    public static void addBuilding(String Login, String Name_of_institution) {
        Connection connection = null;
        Statement stmt = null;
        DataSource dataSource = new DataSource();
        try {
            connection = dataSource.getConnection();
            stmt = connection.createStatement();
            stmt.executeUpdate("INSERT INTO building_parameters (Login, Name_of_institution)" +
                    "VALUES ('" + Login + "', '" + Name_of_institution + "'");

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





