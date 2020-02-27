package app.dao.repository;

import app.dao.entity.Building;
import app.dao.entity.MainIndicators;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MainIndicatorsRepository {

    public MainIndicators getByLogin(String Login) {
        DataSource dataSource = new DataSource();
        try {
            Connection connection = dataSource.getConnection();
            Statement stmt = connection.createStatement();
            ResultSet rsSign = stmt.executeQuery("SELECT Login, Name_of_institution, Heated_area, Heated_volume, Specific_energy_consumption_kWh_for_m3, Specific_consumption_of_primery_energy, Specific_CO2_emissions, Energy_efficiency_class, Image_class, Date_of_data_entry " +
                    "FROM main_indicators_of_energy_efficiency " +
                    "WHERE main_indicators_of_energy_efficiency.Login='" + Login + "'");
            while (rsSign.next()) {
                MainIndicators mainIndicators = new MainIndicators(
                        rsSign.getString("Login"),
                        rsSign.getString("Name_of_institution"),
                        rsSign.getDouble("Heated_area"),
                        rsSign.getDouble("Heated_volume"),
                        rsSign.getDouble("Specific_energy_consumption_kWh_for_m3"),
                        rsSign.getDouble("Specific_consumption_of_primery_energy"),
                        rsSign.getDouble("Specific_CO2_emissions"),
                        rsSign.getString ("Energy_efficiency_class"),
                        rsSign.getLong("Image_class"),
                        rsSign.getDate("Date_of_data_entry")
                );
                return mainIndicators;
            }
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
