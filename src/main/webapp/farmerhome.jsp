<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Farmer Dashboard</title>

<!-- Chart.js CDN -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(to right, #eef2f3, #e6f4ea);
}

/* Main Container */
.container {
    padding: 30px;
}

/* Welcome Banner */
.welcome {
    background: linear-gradient(135deg, #2e7d32, #66bb6a);
    color: white;
    padding: 25px;
    border-radius: 12px;
    margin-bottom: 30px;
    box-shadow: 0 6px 15px rgba(0,0,0,0.1);
}

/* Cards Section */
.cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 20px;
    margin-bottom: 30px;
}

.card {
    background: white;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
    text-align: center;
    transition: 0.3s;
}

.card:hover {
    transform: translateY(-5px);
}

.card h2 {
    margin: 0;
    font-size: 28px;
    color: #2e7d32;
}

.card p {
    color: #555;
    margin-top: 8px;
    font-size: 15px;
}

/* Chart Section */
.charts {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 20px;
}

.chart-box {
    background: white;
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.08);
}
</style>

</head>

<body>

<!-- Navbar -->
<%@ include file="farmernav.jsp"%>

<%
    if (session == null || session.getAttribute("farmer") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<div class="container">

    <!-- Welcome Section -->
    <div class="welcome">
        <h2>👋 Welcome, <%= session.getAttribute("farmer") %></h2>
        <p>Manage your crops, production, and sales efficiently with smart tools.</p>
    </div>

   

</body>
</html>
