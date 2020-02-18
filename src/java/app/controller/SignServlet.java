package app.controller;


import app.dao.entity.Institution;
import app.dao.repository.InstitutionRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Sign")
public class SignServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {}
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String LoginUse = req.getParameter("Login");
        String Password = req.getParameter("Password");
        System.out.println(LoginUse + Password);
      /* if (Login.equals("admin") && Password.equals("1111")) {
            resp.sendRedirect("userpage.jsp");}


      /* else*/
            InstitutionRepository institutionRepository = new InstitutionRepository();
            Institution institution = institutionRepository.getByLoginByPassword(LoginUse, Password);

            if(institution != null) {
                System.out.println("<h2>Hello " + institution.getName_of_institution() + "</h2>");
                resp.sendRedirect("userpage.jsp");

      }
            else {
                resp.sendRedirect("index.jsp");
            }}
        }








       /* if (login.equals("admin") && password.equals("1111"))
        {
            resp.sendRedirect("userpage.jsp"); //замінити потім на list.jsp
        }
        else {
            resp.sendRedirect ("index.jsp");*/





