<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List, com.model.Crops"%>

<!DOCTYPE html>
<html>
<head>
<title>My Crops</title>

<style>
body {
    margin: 0;
    font-family: "Segoe UI", Arial, sans-serif;
    background: linear-gradient(to right, #d7f1ff, #f0fbff);
}

/* Container Card */
.container {
    width: 85%;
    margin: 60px auto;
    background: #ffffff;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 8px 25px rgba(0,0,0,0.15);
}

/* Heading */
h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #1565c0;
}

/* Table Styling */
table {
    width: 100%;
    border-collapse: collapse;
    font-size: 15px;
}

th, td {
    padding: 12px;
    text-align: center;
}

th {
    background: linear-gradient(to right, #1565c0, #26a69a);
    color: white;
    font-weight: 600;
}

td {
    border-bottom: 1px solid #ddd;
}

tr:hover {
    background-color: #f1f9ff;
    transition: 0.3s;
}

.no-data {
    color: red;
    font-weight: bold;
}
</style>
</head>

<body>

<%@ include file="farmernav.jsp"%>

<div class="container">

<h2>🌾 My Crop Details</h2>

<table>
    <tr>
        <th>Crop Name</th>
        <th>Crop Type</th>
        <th>Quantity (Kg)</th>
        <th>Price (₹)/Kg</th>
    </tr>

<%
List<Crops> crops = (List<Crops>) request.getAttribute("crops");

if (crops != null && !crops.isEmpty()) {
    for (Crops c : crops) {
%>

    <tr>
        <td><%= c.getCrop_name() %></td>
        <td><%= c.getCrop_type() %></td>
        <td><%= c.getQuantity() %></td>
        <td>₹ <%= c.getPrice() %></td>
    </tr>

<%
    }
} else {
%>

    <tr>
        <td colspan="4" class="no-data">No crops found</td>
    </tr>

<%
}
%>

</table>

</div>

</body>
</html>
