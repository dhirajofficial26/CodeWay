<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random,java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%
    Integer num = (Integer) session.getAttribute("generatedNumber");
    Integer number1 = Integer.parseInt(request.getParameter("number"));

    System.out.println("Generated Number: " + num);
    System.out.println("User Entered Number: " + number1);

    if (number1 == num) {
        RequestDispatcher rd = request.getRequestDispatcher("/success.jsp");
        rd.forward(request, response);
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("/opps.jsp");
        rd.forward(request, response);
    }
%>

</body>
</html>
