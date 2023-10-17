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

        /* Style for form elements */
        input[type="text"], input[type="password"] {
            padding: 10px;
            margin: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <h1>Update Customer</h1>
    
   <marquee direction="left"> 
      <hr>
      </marquee> 
      
   <marquee direction="right"> 
      <hr>
      </marquee>
      
    
    <!-- Form for updating information -->
    <h4>${msg}</h4>
    <form action="updateuser" method="post">
        <label for="name">Name:</label> 
        <input type="text" placeholder="Name" name="name"><br>
        <label for="name">Password:</label>
        <input type="password" placeholder="Password" name="password"><br>
        <label for="name">Number:</label>
        <input type="text" placeholder="Number" name="number"><br>
        <label for="name">Address:</label>
        <input type="text" placeholder="Address" name="address"><br>
        <button class="button">Update</button>
    </form>
    <!-- Back button -->
    <br>
    <a class="button back-button" href="adminpanal" style="text-decoration: none;">Back</a>
    
</body>
</html>
