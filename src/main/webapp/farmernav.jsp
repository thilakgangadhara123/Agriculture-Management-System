<!DOCTYPE html>
<html>
<head>
<title>Farmer Dashboard</title>

<style>
body {
    margin: 0;
    font-family: "Segoe UI", Arial, sans-serif;
    background: linear-gradient(to right, #f8fbff, #eef7f9);
}

/* Navbar */
.navbar {
    background: linear-gradient(to right, #00695c, #26a69a);
    padding: 14px 35px;
    display: flex;
    align-items: center;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.12);
}

/* Links */
.navbar a {
    color: #ffffff;
    text-decoration: none;
    font-size: 15px;
    font-weight: 500;
    padding: 9px 20px;
    margin-right: 12px;
    border-radius: 20px;
    transition: 0.3s ease-in-out;
}

/* Hover */
.navbar a:hover {
    background-color: rgba(255, 255, 255, 0.9);
    color: #00695c;
}

/* Active */
.navbar a.active {
    background-color: #004d40;
    font-weight: 600;
}

/* Logout */
.navbar a.logout {
    margin-left: auto;
    background: linear-gradient(to right, #c62828, #e57373);
}

.navbar a.logout:hover {
    background: #ffffff;
    color: #c62828;
}
</style>
</head>

<body>

<div class="navbar">
    <a href="farmerhome.jsp" class="active">Home</a>
    <a href="addCrop.jsp">Add Crop</a>
    <a href="buyCrop.jsp">Buy Crop</a>
    <a href="ViewCropServlet">View Crop</a>
    <a href="LogoutServlet" class="logout">Logout</a>
</div>

</body>
</html>
