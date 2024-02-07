package com.task;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/Login") 
public class AtmMachine extends HttpServlet  {
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        String name  = req.getParameter("name");
        String Atm_number = req.getParameter("num");
        String password = req.getParameter("password");
        String atmNumber = req.getParameter("atmNumber");
        
        // Set the ATM number in the session
        HttpSession session = req.getSession();
        session.setAttribute("atmNumber", Atm_number);

        System.out.println(name+" "+Atm_number+" "+ password);
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tvm?useSSL=false", "root", "Dhiraj@26");

            PreparedStatement pt = con.prepareStatement("select * from Atm  where name=? and Atm_number=? and password=?");
            pt.setString(1, name);
            pt.setString(2, Atm_number);
            pt.setString(3, password);

            ResultSet rs = pt.executeQuery();
            if (rs.next()) {
            	  out.println("<html>");
                  out.println("<head>");
                  out.println("<style>");
                  out.println("body { font-family: Arial, sans-serif; background-color: #f4f4f4; }");
                  out.println(".container { text-align: center; margin-top: 50px; }");
                  out.println(".result { border: 1px solid #ccc; padding: 20px; background-color: #fff; }");
                  out.println("</style>");
                  out.println("</head>");
                  out.println("<body>");
                  out.println("<div class='container'>");
                  out.println("<div class='result'>");
                  out.println("<h2>Welcome, " + rs.getString("name") + "!</h2>");
             RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
  rd.include(req, resp);
            } else {
              
                out.println("<h1 class='error'>User data not match</h1>");
            

                RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
                rd.include(req, resp);
            }

            pt.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
            RequestDispatcher rd = req.getRequestDispatcher("/error.jsp");
            rd.include(req, resp);
        }
    }
}

