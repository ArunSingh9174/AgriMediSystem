<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resource/css/register.css">
    <title>Registration Page</title>
    <style>
        body {
            background-image: url('resource/images/agri2.jpg'); /* Path to your background image */
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* No repeating of the image */
            background-attachment: fixed; /* Fixed background as you scroll */
        }
    </style>
    
</head>
<body>

    <div class="container">
        <form action="registration" method="post">
            <h1>Registration</h1>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="number" required>

            <label for="address">Address:</label>
            <textarea id="address" name="address" required></textarea>

            <button type="submit">Register</button>
        </form>
        
        <!-- Add a "Back" button -->
        <div class="back-button">
            <a href="login">Back</a>
        </div>
    </div>
</body>
</html>
