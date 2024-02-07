
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Teko&display=swap">
    <style>
        body {
            font-family: 'Bebas Neue', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container::before{
    content: "";
background-image: url('/ATM_Machine/src/main/webapp/WEB-INF/rupixen-com-Q59HmzK38eQ-unsplash.jpg');
background-repeat: no-repeat; /* Separate property */
background-position: center center; /* Separate property */
background-size: cover; /* Separate property */
position: absolute;
top: 0;
left: 0;
height: 100%;
width: 100%;
z-index: -1;
opacity: 0.5; /* Corrected */
}

        .container {
            background-color: #fff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h1 {
            font-family: 'Teko', sans-serif;
            text-align: center;
            margin-bottom: 30px;
        }

        form {
            text-align: center;
        }

        input[type="text"],
        input[type="number"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            border: none;
            border-radius: 5px;
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0dabdb;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>client deatils</h1>
        <form action="Login" method="post">
            <input type="text" name="name" placeholder="Enter your name" required>
            <br><br>
            <input type="number" name="num" placeholder="Enter your ATM 9 digit number" required>
            <br><br>
            <input type="password" name="password" placeholder="Enter your password" required>
            <br><br>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
