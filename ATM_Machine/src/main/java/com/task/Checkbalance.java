package com.task;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Enumeration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/balance")
public class Checkbalance extends HttpServlet {
       
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        

        
        HttpSession session = req.getSession();
        String atmNumber = (String) session.getAttribute("atmNumber");
     
        
        if (atmNumber == null) {
            out.println("<p>Error: User not found</p>");
            return;
        }
        
       
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tvm", "root", "Dhiraj@26");

            PreparedStatement pt = con.prepareStatement("select * from atm where atm_number=?");

            pt.setString(1, atmNumber);

            ResultSet rs = pt.executeQuery();
            if (rs.next()) {
                double balance = rs.getDouble("balance"); // Retrieve balance as double
                HttpSession session1 = req.getSession();
                session1.setAttribute("balance", balance); // Store balance as Double
                RequestDispatcher rd = req.getRequestDispatcher("/checkbalance.jsp");
                rd.include(req, resp);
            } else {
                RequestDispatcher rd = req.getRequestDispatcher("/error.jsp");
                rd.include(req, resp);
            }

            pt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
            RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
            rd.include(req, resp);
        }
    }
}
