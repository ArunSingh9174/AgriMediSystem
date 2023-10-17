<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        /* Basic styling */
        body {
        background-image: url('resource/images/delete.jpg'); /* Path to your background image */
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* No repeating of the image */
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            text-align: center;
        }

        /* Style for the buttons */
        .button {
            padding: 10px 20px;
            margin: 5px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        /* Style for the back button */
        .back-button {
            background-color: #f44336;
        }
    </style>
</head>
<body>
    <h1>Delete Customer</h1>
    
   <marquee direction="left"> 
      <hr>
      </marquee> 
      
   <marquee direction="right"> 
      <hr>
      </marquee>
    <!-- Buttons for delete, page number, and back -->
    <h4>${msg}</h4>
    <form action="daleteuser" method="post">
    <button class="button">Delete</button>
    <input type="text" placeholder="Enter Number" class="page-number-input" name="number">
   <a class="button back-button" href="adminpanal" style="text-decoration: none;">Back</a>
   </form>
</body>
</html>
