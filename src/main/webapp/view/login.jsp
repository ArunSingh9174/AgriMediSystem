<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resource/css/login.css">
    <title>Login Page</title>
    <style>
        body {
            background-image: url('resource/images/agri1.jpeg'); /* Path to your background image */
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* No repeating of the image */
            background-attachment: fixed; /* Fixed background as you scroll */
        }
    </style>
    
</head>
<body>
    <div class="container">
        <form action="log" method="post">
            <h1>Login</h1>
            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="number" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Login</button>
        </form>
        <div class="register-link">
            <p>Don't have an account? <a href="register">Register</a></p>
        </div>
    </div>
</body>
</html>
