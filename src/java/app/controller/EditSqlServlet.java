package app.controller;

import app.dao.repository.InstitutionRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/EditSql")
public class EditSqlServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html; charset=UTF-8");
        PrintWriter pw =resp.getWriter();
        pw.print("Edit 3 tables");

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (IllegalAccessException | InstantiationException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            Connection conn = DriverManager.getConnection ("jdbc:mysql://localhost:3306/energoauditukr", "root",  "6587");
            Statement stmt =conn.createStatement();
            int rows = stmt.executeUpdate("INSERT Institution(Login, Password, Name_of_institution, Head_of_institution, Phone_number) VALUES ('proba@umail.net', '76000', 'ДНЗ', 'Лис Петро Ігорович', '+380501234567')");
                            pw.printf("Added %d rows", rows);
                            System.out.println (rows);
            stmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        //req.getRequestDispatcher("page3.jsp").forward(req, resp);


    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect ("edit.jsp");
    }

}