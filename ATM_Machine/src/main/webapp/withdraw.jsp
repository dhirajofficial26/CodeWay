<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Withdrawal Form</title>
    <link rel="stylesheet" href="styles.css">
    <style>body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }
    
    .container::before{
        content: "";
    background-image: url('image/rupixen-com-Q59HmzK38eQ-unsplash.jpg');
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
        width: 50%;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    
    form {
        display: flex;
        flex-direction: column;
    }
    
    label {
        margin-bottom: 10px;
    }
    
    input[type="number"] {
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }
    
    button {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    
    button:hover {
        background-color: #0056b3;
    }</style>
    </style>
</head>
<body>
    <div class="container">
        <h2>Withdrawal Form</h2>
        <form action="Saving_account" method="post">
            <label for="withdrawAmount">Withdrawal Amount:</label>
            <input type="number" name="withdrawAmount" id="withdrawAmount" required>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>