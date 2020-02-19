package app.controller;
import app.dao.entity.Institution;
import app.dao.repository.InstitutionRepository;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

@WebServlet("/Sign")
public class SignServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {}
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");

        String Login = req.getParameter("Login");
        String Password = req.getParameter("Password");
        System.out.println(Login + Password);
            InstitutionRepository institutionRepository = new InstitutionRepository();
            Institution institution = institutionRepository.getByLoginByPassword(Login, Password);

            if(institution != null) {
                System.out.println("<h2>Hello " + institution.getName_of_institution() + "</h2>");
                req.setAttribute("location", Locale.getDefault());

                String LoginUser = institution.getLogin() ;
                String PasswordUser = institution.getPassword();
                String Name_of_institutionUser = institution.getName_of_institution();
                String Head_of_institutionUser = institution.getHead_of_institution();
                String Phone_numberUser = institution.getPhone_number();

                System.out.println(LoginUser+ PasswordUser+Name_of_institutionUser+Head_of_institutionUser+Phone_numberUser);

                req.setAttribute("LoginUser", LoginUser);
                req.setAttribute("PasswordUser", PasswordUser);
                req.setAttribute("Name_of_institutionUser", Name_of_institutionUser);
                req.setAttribute("Head_of_institutionUser", Head_of_institutionUser);
                req.setAttribute("Phone_numberUser", Phone_numberUser);

                RequestDispatcher view = req.getRequestDispatcher("userpage.jsp");
                view.forward(req, resp);
      }
            else {
                resp.sendRedirect("index.jsp");
            }
    }
        }


//PrintWriter out = resp.getWriter();

//req.getRequestDispatcher("/userpage.jsp").forward(req, resp);

//resp.sendRedirect("userpage.jsp");

/*  System.out.println(LoginUser+ PasswordUser+Name_of_institutionUser+Head_of_institutionUser+Phone_numberUser);*/

/* HttpSession session = req.getSession(); session.setAttribute("name", Name_of_institutionUser);  */
