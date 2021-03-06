package app.controller;

import app.dao.entity.Institution;
import app.dao.repository.InstitutionRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UserTableSQL")
public class UserTableSQL extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {}
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Login = req.getParameter("Login");
        String Password = req.getParameter("Password");

        InstitutionRepository institutionRepository = new InstitutionRepository();
        Institution institution = institutionRepository.getByLoginByPassword(Login, Password);

        if(institution != null) {
            System.out.println("<h2>Hello " + institution.getName_of_institution() + "</h2>");

        }
        else {

        }}
}