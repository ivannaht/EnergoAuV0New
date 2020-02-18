package app.controller;

import app.dao.entity.Institution;
import app.dao.repository.DataSource;
import app.dao.repository.InstitutionRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

//має показувати всі дані з таблиці SQL
@WebServlet("/ListSql")

public class ListSql extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        PrintWriter pw =resp.getWriter();
        DataSource dataSource = new DataSource();
        try {
            Connection connection = dataSource.getConnection();
            Statement stmt =connection.createStatement();
            //ResultSet rs =stmt.executeQuery("SELECT Name_of_institution from building_parameters");
            ResultSet rsList =stmt.executeQuery("SELECT  Name_of_institution, Locations"+" from building_parameters");
             while (rsList.next()){
            //String name = rs.getString("Name_of_institution");
                 String place = rsList.getString("Name_of_institution") +" "+"("+rsList.getString("Locations")+")";
            pw.println ("<h3>"+"<li>"+place+"</li>"+"</h3>");
            pw.flush();
                          }
                          //pw.close();
       stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        }
    }

