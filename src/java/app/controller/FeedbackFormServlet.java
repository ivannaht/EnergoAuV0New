package app.controller;

import app.dao.repository.FeedbackRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/FeedbackFormServlet")
public class FeedbackFormServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String First_Name = request.getParameter("First_Name");
        String Last_Name = request.getParameter("Last_Name");
        String Email = request.getParameter("Email");
        String Subject = request.getParameter("Subject");
        String Comments = request.getParameter("Comments");

        FeedbackRepository.addFeedback(First_Name, Last_Name, Email, Subject, Comments);
        PrintWriter printWriter;
        try {
            printWriter = response.getWriter();
            printWriter.println("Feedback send");
        } catch (IOException exc) {
        }
    }
}


