package app.controller;

import app.dao.entity.Institution;
import app.dao.repository.FeedbackRepository;
import app.dao.repository.InstitutionRepository;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Add")
public class AddServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect ("add.jsp");
        //RequestDispatcher requestDispatcher = req.getRequestDispatcher("add.jsp");
        //requestDispatcher.forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("UTF-8");

        String Login = req.getParameter("Login");
        String Password = req.getParameter("Password");
        String Name_of_institution = req.getParameter(" Name_of_institution");
        String Head_of_institution = req.getParameter("Head_of_institution");
        String Phone_number = req.getParameter("Phone_number");
        InstitutionRepository.addInstitution(Login, Password, Name_of_institution, Head_of_institution, Phone_number);



    }

}