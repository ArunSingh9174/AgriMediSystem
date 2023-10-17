 <%@page import="com.main.bean.Shipped"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.main.bean.User"%>
<%@page import="java.util.List"%>


<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order List</title>
    <link rel="stylesheet" href="resource/css/getall.css"> 
    <!-- Link to your CSS file -->
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
        </</style>
</head>
<body>

<a class="button back-button" href="adminpanal" style="text-decoration: none;">Back</a>
    <h1>Customer Order</h1>
    
    <table>
    <tr>
    <th>S.No</th>
    <th>User Number:</th>
    <th>Product Name :</th>
    <th>Price :</th>
    <th>Quantity :</th>
    </tr>
     <%
    List<Shipped> sh=(List<Shipped>)request.getAttribute("data");
    for(Shipped s :sh){
    %> 
    <tr>
    <td><%=s.getId() %></td>
    <td><%=s.getName()%></td>
    <td><%=s.getProductsName()%></td>
    <td><%=s.getPrice()%></td>
    <td><%=s.getQuantity()%></td>
    </tr>
    <%} %>
    </table>
           
</body>
</html>
