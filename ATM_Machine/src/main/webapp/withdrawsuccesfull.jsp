<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
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
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.message-box {
    text-align: center;
    background-color: #fff;
    padding: 40px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.message-box h1 {
    color: #333;
    margin-bottom: 20px;
}

.message-box p {
    color: #666;
    margin-bottom: 30px;
}

.btn {
    display: inline-block;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    padding: 10px 20px;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>


    <div class="container">
        <div class="message-box">
            <h1>Withdrawal Successfully</h1>
            <p>Your withdrawal has been processed successfully.</p>
            <a href="index.jsp" class="btn">Return to Homepage</a>
            <a href="checkbalance.jsp" class="btn">check balance</a>
               <a href="quit.jsp" class="btn">leave now</a>
        </div>
    </div>
</body>
</html>
