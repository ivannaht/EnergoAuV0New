package app.dao.repository;

import app.dao.entity.Building;
import app.dao.entity.Institution;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BuildingRepository {

    public Building getByLogin(String Login) {
        DataSource dataSource = new DataSource();
        try {
            Connection connection = dataSource.getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rsSign = stmt.executeQuery("SELECT Login, Name_of_institution, Locations, Settlement, Region, Functional_purpose, Year_of_commissioning, Number_of_floors, Photo_main_path, Id_number " +
                    "FROM building_parameters " +
                    "WHERE building_parameters.Login='" + Login + "'");
            while (rsSign.next()) {
                Building building = new Building(
                        rsSign.getString("Login"),
                        rsSign.getString("Name_of_institution"),
                        rsSign.getString("Locations"),
                        rsSign.getString("Settlement"),
                        rsSign.getString("Region"),
                        rsSign.getString("Functional_purpose"),
                        rsSign.getString("Year_of_commissioning"),
                        rsSign.getInt("Number_of_floors"),
                        rsSign.getString("Photo_main_path"),
                        rsSign.getInt("Id_number")
                );
                return building;
            }
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void addFastBuilding(String Login, String Name_of_institution) {
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


