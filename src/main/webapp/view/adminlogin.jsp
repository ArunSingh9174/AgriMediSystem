<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="resource/css/adminlogin.css">
    <title>Admin Login</title>
    <style>
        body {
            background-image: url('resource/images/agri3.jpg'); /* Path to your background image */
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* No repeating of the image */
            background-attachment: fixed; /* Fixed background as you scroll */
        }
    </style>
    
</head>
<body>
    <div class="container">
        <form action="adminlo" method="post">
            <h1>Admin Login</h1>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Login</button>
        </form>
        <div class="back-button">
            <a href="index">Back</a>
        </div>
    </div>
</body>
</html>
