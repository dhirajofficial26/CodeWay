<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ page import="java.util.Random" %>
    <%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap');
      </style>
      <style>
        @import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Teko&display=swap');
      </style>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url("https://images.unsplash.com/photo-1586173806725-797f4d632f5d?q=80&w=1794&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
            background-size: auto;  
            background-repeat: no-repeat;  
            background-position: center;
            color: #ffffff;
        }
#vision{
    display: none;
}
        .left {
            display: inline-block;  
            position: absolute;
            top: 20px;
            left: 36px;
        }

        .mid {
            display: block;
            margin: auto;
            margin-top: 20px;
            width: 41%;
            font-family: 'Bebas Neue';
        }

        .navbar {
            display: inline-block;
        }

        .navbar li {
            display: inline-block;
        }

        .navbar li a {
            color: #ffffff;
            padding: 8px;
            text-decoration: none;
            display: inline-block;
            font-size: 25px;
        }

        .navbar li a:hover, .navbar li a:active {
            text-decoration: solid underline;
            color: rgb(200, 19, 91);
            border: 2px solid black;
            background-color: white;
        }

        .right {
            position: absolute;
            right: 36px;
            top: 35px;
            display: inline-block;
            font-family: 'Teko', sans-serif;
        }

        .left img {
            width: 100px;
        }

        .btn {
            border-radius: 8px;
            padding: 8px;
            text-decoration: none;
            display: inline-block;
            font-size: 25px;
            color: #ffffff;
            background-color: gray;   
        }

        .btn:hover {
            color: rgb(26, 23, 24);
            background-color: white;
        }

        .container {
            margin: 70px 34px;
            padding: 20px;
            width: 50%;
            border: 2px solid rgb(231, 220, 220);
            border-radius: 22px;
            text-align: center;
        }

        .F input {
            display: block;
            margin: 20px 12px;
            margin-left: 60px;
            font-size: 20px;
            width: 500px;
            text-align: center;
            border-radius: 12px;
            font-family: 'Teko', sans-serif;
        }

        .container button {
            text-align: center;
            width: 500px;
            font-family: 'Teko', sans-serif;
        }

        .cube {
            display: block;
            margin: auto;
            width: 33%;
            background: none;
        }

        #play {
            position: absolute;
            top: 80%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 24px;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 10px;
            border-radius: 10px;
            color: black;
            cursor: pointer;
            border: none;
            background-color: #ffffff;
        }
        .btn {
    border-radius: 8px;
    padding: 8px;
    text-decoration: none;
    display: inline-block;
    font-size: 25px;
    color: #ffffff;
}

.btn:hover {
    color: rgb(26, 23, 24);
    background-color: white;
}

#play:hover {
    background-color: rgb(252, 28, 81);
    color: rgb(206, 206, 222);
}

    </style>
    <title>Document</title>
</head>
<body>
    <header class="header">
        <div class="left"> 
            <img src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExYjRuOGJnZ3d5dm42cjIyM2gxOWl5eG1ldnhyeXpxYWF6aWo5N3U4YSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/povenlBAIz14s/giphy.gif" alt="image">
        </div>
        <div class="mid">
            <ul class="navbar">
                <li><a href="#">Home</a></li>
                <li><a href="#">FItness calculator</a></li>
                <li><a href="#"> about us </a></li>
                <li><a href="#">Help</a></li>
            </ul>
        </div>
        <div class="right">
            <button class="btn">Call us</button>
            <button class="btn">Email us</button>
        </div>
    </header>
<div id="vision1" >
    <img src="https://media.giphy.com/media/f73urdknsWliIEZiDw/giphy.gif" class="cube" alt="">
    <button id="play" class="btn" onclick="rolldice()">Play Game</button> </div>
<form action="rolldice.jsp">
    <div id="vision">
        <img src="https://media.giphy.com/media/5T0klia2LqiIPM87lt/giphy.gif" class="cube" alt="">
        <button type="submit" id="play" class="btn" >roll dice</button>
    </div>
</form>

</body>
<script>
    const rolldice=()=>{
      document.querySelector("#vision1").style.display='none';
    
      document.querySelector("#vision").style.display='block';
    }

</script>
</html>
