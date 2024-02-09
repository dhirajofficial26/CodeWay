<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Grade Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            color: #333;
        }

        .failed {
            color: #ff6347; /* Tomato */
            font-weight: bold;
        }

        .passed {
            color: #32cd32; /* Lime Green */
            font-weight: bold;
        }

        p {
            margin-bottom: 10px;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: black;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #fff;
        }

        a:hover {
            text-decoration: underline;
        }

        .go-back-btn {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<%
String marks1Param = request.getParameter("marks1");
int mark1 = (marks1Param != null && !marks1Param.isEmpty()) ? Integer.parseInt(marks1Param) : 0;

String marks2Param = request.getParameter("marks2");
int mark2 = (marks2Param != null && !marks2Param.isEmpty()) ? Integer.parseInt(marks2Param) : 0;

String marks3Param = request.getParameter("marks3");
int mark3 = (marks3Param != null && !marks3Param.isEmpty()) ? Integer.parseInt(marks3Param) : 0;

String marks4Param = request.getParameter("marks4");
int mark4 = (marks4Param != null && !marks4Param.isEmpty()) ? Integer.parseInt(marks4Param) : 0;

String marks5Param = request.getParameter("marks5");
int mark5 = (marks5Param != null && !marks5Param.isEmpty()) ? Integer.parseInt(marks5Param) : 0;
%>

<h1>Student Grade Calculator</h1>
<div class="container">
    <table>
        <tr>
            <th>Subject</th>
            <th>Marks</th>
        </tr>
        <tr>
            <td>Math</td>
            <td class="<%= (mark1 < 35) ? "failed" : "passed" %>"><%= mark1 %></td>
        </tr>
        <tr>
            <td>Chemistry</td>
            <td class="<%= (mark2 < 35) ? "failed" : "passed" %>"><%= mark2 %></td>
        </tr>
        <tr>
            <td>Biology</td>
            <td class="<%= (mark3 < 35) ? "failed" : "passed" %>"><%= mark3 %></td>
        </tr>
        <tr>
            <td>Physics</td>
            <td class="<%= (mark4 < 35) ? "failed" : "passed" %>"><%= mark4 %></td>
        </tr>
        <tr>
            <td>IT</td>
            <td class="<%= (mark5 < 35) ? "failed" : "passed" %>"><%= mark5 %></td>
        </tr>
    </table>
    
    <% 
    int totalMarks = mark1 + mark2 + mark3 + mark4 + mark5;
    double percentage = (double) totalMarks / 5;
    String status = (percentage < 35 || mark1 < 35 || mark2 < 35 || mark3 < 35 || mark4 < 35 || mark5 < 35) ? "failed" : "passed";
    %>
    
    <p>Your percentage: <span class="<%= status %>"><%= percentage %></span></p>
    
    <% if (status.equals("failed")) { %>
        <p class="failed">You have failed in this exam.</p>
    <% } else { %>
        <p class="passed">Congratulations! You have passed the exam.</p>
    <% } %>

    <div class="go-back-btn">
        <a href="javascript:history.back()"><button>Go Back
