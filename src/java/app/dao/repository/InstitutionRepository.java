package app.dao.repository;

import app.dao.entity.Institution;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class InstitutionRepository {


    public Institution getInstitution() {

            DataSource dataSource = new DataSource();

            String sql = "SELECT * from institution";

            try (
                    Connection conn = dataSource.getConnection();
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery(sql);
            ) {
                if (rs.next()) {
                    Institution institution = new Institution(
                            rs.getString("Login"),
                            rs.getString("Password"),
                            rs.getString("Name_of_institution"),
                            rs.getString("Head_of_institution"),
                            rs.getString("Phone_number")
                    );

                    return institution;

                }

            } catch (SQLException e) {
                e.printStackTrace();
            }

            return null;
        }
    }

