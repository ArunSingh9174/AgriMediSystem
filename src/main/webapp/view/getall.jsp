 <%@page import="java.util.ArrayList"%>
<%@page import="com.main.bean.User"%>
<%@page import="java.util.List"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
    <link rel="stylesheet" href="resource/css/getall.css">
     <!-- Link to your CSS file -->
     <style>
        body {
            background-image: url('resource/images/update.jpg'); /* Path to your background image */
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* No repeating of the image */
            background-attachment: fixed; /* Fixed background as you scroll */
        }
    </style>
</head>

<body>

<a class="button back-button" href="adminpanal" style="text-decoration: none;">Back</a>
    <h1>Customer List</h1>
    
    <table>
    <tr>
    <th>Name :</th>
    <th>Password :</th>
    <th>Number :</th>
    <th>Address :</th>
    
    </tr>
    <%
    List<User> user = (List<User>)request.getAttribute("data");
    for(User u:user){
    
    %>
    <tr>
    <td><%=u.getName() %></td>
    <td><%=u.getPassword() %></td>
    
    <td><%=u.getNumber() %></td>
    <td><%=u.getAddress() %></td>
    
    
    
    </tr>
    <%} %>
    
    </table>
           
</body>
</html>
