<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
    <title>Registration Form</title>
    <style>
      body{
       background-color:rgb(235, 227, 227);
      }
        .loki{
            display: flex;
            font-family: 'Jost', sans-serif;
            width: 100%;
        height: 100vh;
        flex-direction: column;
            text-align: center;
            justify-content: center;
    font-size: 30px;
    font-family: 'Protest Riot', sans-serif;
    text-align: center;
    align-items: center;
    flex-wrap: wrap;
    font-family: 'Oswald', sans-serif;
        }
        .loki::before{
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
        
   .loki a{
    text-decoration: none;
    padding: 12px 2px;
    margin: 12px;
    border: 3px solid rgb(12, 13, 12);
    border-radius: 5px;
    width: 30%;
    color: green;
    
   }     
   a:hover,  a:active {
            text-decoration: solid underline;
            /* border: 2px solid black;
            background-color: rgb(110, 163, 12); */
            color: blue;
            font-family: 'Oswald', sans-serif;
            background-color:rgb(253, 255, 255);
        }
    </style>
</head>
<body>
    <div class="loki" >
       <a href="balance" id="saving"> check your balance </a>
        <a href="deposit.jsp" id="current"> deposite </a>
       <a href="withdraw.jsp" id="current"> withdraw your momey  </a>
   
       <a href="quit.jsp" id="current"> quit  </a>
       
    </div>
</body>
</html>
