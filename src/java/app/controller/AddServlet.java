package app.controller;

import app.dao.entity.Institution;


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
        String Login = req.getParameter("Login");
        String Password = req.getParameter("Password");
        Institution institution = new Institution(Login, Password);
       // Model model = Model.getInstance();
       // model.add(institution);
        req.setAttribute("Login", Login);
        doGet(req, resp);
    }

}