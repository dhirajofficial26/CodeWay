<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Grade Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
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
    </style>
</head>
<body>
    <div class="container">
        <h1>Student Grade Calculator</h1>
        <form action="book" method="get">
            <div class="form-group">
                <label for="marks1">Math:</label>
                <input type="number" placeholder="Enter your marks" name="marks1" id="marks1" max="100" required>
            </div>
            <div class="form-group">
                <label for="marks2">Chemistry:</label>
                <input type="number" placeholder="Enter your marks" name="marks2" id="marks2" max="100" required>
            </div>
            <div class="form-group">
                <label for="marks3">Biology:</label>
                <input type="number" placeholder="Enter your marks" name="marks3" id="marks3" max="100" required>
            </div>
            <div class="form-group">
                <label for="marks4">Physics:</label>
                <input type="number" placeholder="Enter your marks" name="marks4" id="marks4" max="100" required>
            </div>
            <div class="form-group">
                <label for="marks5">IT:</label>
                <input type="number" placeholder="Enter your marks" name="marks5" id="marks5" max="100" required>
            </div>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
