<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        /* Basic styling */
        body {
            background-image: url('resource/images/agri2.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            text-align: center;
        }

        /* Style for the buttons */
        .button-container {
            text-align: center;
        }

        .button {
            padding: 10px 20px;
            margin: 5px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: inline-block; /* Display buttons on the same line */
            text-decoration: none; /* Remove underlines from links */
        }

        /* Style for the back button */
        .back-button {
            background-color: #f44336;
        }

        /* Style for the order button */
        .order-button {
            background-color: #ff9800;
        }
    </style>
</head>
<body>

    <h1>Admin Panel</h1>
    
    <!-- Buttons for various actions -->
    <div class="button-container">
        <a class="button" href="delete">Delete</a>
        <a class="button" href="update">Update</a>
    </div>

    <div class="button-container">
        <form action="getallUser" method="post">
            <button type="submit" class="button">Get All</button>
        </form>
    </div>

    <div class="button-container">
        <form action="showorder" method="post">
            <button type="submit" class="button order-button">Show Order</button>
        </form>
    </div>

    <div class="button-container">
        <a class="button back-button" href="index">Back</a>
    </div>

</body>
</html>
