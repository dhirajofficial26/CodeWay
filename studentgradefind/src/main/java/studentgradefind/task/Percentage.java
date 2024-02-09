package studentgradefind.task;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/book")
public class Percentage extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int math = 0, chemistry = 0, biology = 0, physics = 0, IT = 0;

        String marks1Param = req.getParameter("marks1");
        if (marks1Param != null && !marks1Param.isEmpty()) {
            math = Integer.parseInt(marks1Param);
        }
        String marks2Param = req.getParameter("marks2");
        if (marks2Param != null && !marks2Param.isEmpty()) {
            chemistry = Integer.parseInt(marks2Param);
        }
        String marks3Param = req.getParameter("marks3");
        if (marks3Param != null && !marks3Param.isEmpty()) {
            biology = Integer.parseInt(marks3Param);
        }
        String marks4Param = req.getParameter("marks4");
        if (marks4Param != null && !marks4Param.isEmpty()) {
            physics = Integer.parseInt(marks4Param);
        }
        String marks5Param = req.getParameter("marks5");
        if (marks5Param != null && !marks5Param.isEmpty()) {
            IT = Integer.parseInt(marks5Param);
        }

        int[] marks = {math, chemistry, biology, physics, IT};
        String[] subjects = {"Math", "Chemistry", "Biology", "Physics", "Information Technology"};
        String failed = "";

        for (int i = 0; i < marks.length; i++) {
            if (marks[i] < 35) {
                failed += subjects[i] + ", ";
            }
        }
        req.setAttribute("Failed", failed);

        int totalmarks = math + chemistry + biology + physics + IT;
        int outofmarks = 100;
        double percentage = ((double) totalmarks / outofmarks * 5) * 100;
        req.setAttribute("Percentage", percentage);

        req.setAttribute("mark1", math);
        req.setAttribute("mark2", chemistry);
        req.setAttribute("mark3", biology);
        req.setAttribute("mark4", physics);
        req.setAttribute("mark5", IT);
     
        if (percentage < 35.00) {
            String failedpercentage = "you are failed in this exam";
            req.setAttribute("failed", failedpercentage);
        }

        req.getRequestDispatcher("passorfail.jsp").forward(req, resp);
    }
}
