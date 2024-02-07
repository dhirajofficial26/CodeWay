<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('image/rupixen-com-Q59HmzK38eQ-unsplash.jpg');
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            font-family: 'Oswald', sans-serif;
        }

        .container {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h1 {
            margin-bottom: 30px;
            color: green;
        }

        p {
            margin-bottom: 20px;
            color: blue;
        }

        div div {
            text-decoration: none;
            padding: 12px 20px;
            margin: 12px;
            border: 3px solid rgb(12, 13, 12);
            border-radius: 5px;
            width: 30%;
            color: green;
        }

        div div:hover, div div:active {
            text-decoration: solid underline;
            color: blue;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Your Account Balance</h1>
        <% 
            Double balance = (Double) session.getAttribute("balance");
            if (balance != null) {
                out.println("<p>Your current balance is: $" + String.format("%.2f", balance) + "</p>");
            } else {
                out.println("<p>Error: Balance not found</p>");
            }
        %>
    </div>
</body>
</html>
