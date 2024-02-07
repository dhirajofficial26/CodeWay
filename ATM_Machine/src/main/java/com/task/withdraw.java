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

@WebServlet("/Saving_account")
public class withdraw extends HttpServlet {
       
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
                double withdrawAmount = Double.parseDouble(req.getParameter("withdrawAmount"));
                
                if (rs.getDouble("balance") < withdrawAmount) {
                    
                	 RequestDispatcher rd = req.getRequestDispatcher("Insufficient Balance.jsp");
                     rd.include(req, resp);
                    return;
                }
                
          
                double newBalance = rs.getDouble("balance") - withdrawAmount;

                PreparedStatement updatePt = con.prepareStatement("UPDATE atm SET balance = ? WHERE atm_number = ?");
                updatePt.setDouble(1, newBalance);
                updatePt.setString(2, atmNumber);
                updatePt.executeUpdate();
                RequestDispatcher rd = req.getRequestDispatcher("/withdrawsuccesfull.jsp");
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
