<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.vcube.utility.DBConnection"%>

<%
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purchase Crop</title>

<style>
body {
	margin: 0;
	font-family: "Segoe UI", Arial, sans-serif;
	background: linear-gradient(to right, #d4fc79, #96e6a1);
}

.container {
	width: 500px;
	margin: 80px auto;
	background: #ffffff;
	padding: 35px;
	border-radius: 15px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
}

h4 {
	text-align: center;
	color: #2e7d32;
	margin-bottom: 20px;
}

label {
	font-weight: 600;
	margin-top: 12px;
	display: block;
	color: #444;
}

input, select {
	width: 100%;
	padding: 12px;
	margin-top: 6px;
	border-radius: 8px;
	border: 1px solid #ccc;
	font-size: 14px;
}

input:focus, select:focus {
	border-color: #2e7d32;
	outline: none;
	box-shadow: 0 0 6px #2e7d32;
}

button {
	width: 100%;
	padding: 14px;
	margin-top: 20px;
	border: none;
	border-radius: 10px;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
	background: linear-gradient(to right, #2e7d32, #66bb6a);
	color: white;
	transition: 0.3s ease;
}

button:hover {
	transform: scale(1.05);
	background: linear-gradient(to right, #66bb6a, #2e7d32);
}
</style>
</head>

<body>

	<%@ include file="farmernav.jsp"%>

	<div class="container">
		<h4>Purchase Crop</h4>

		<form action="PurchaseServlet" method="post">

			<label>Select Crop</label> <select name="cropId" required>
				<option value="">-- Select Crop --</option>

				<%
				try {
					DBConnection db = new DBConnection();
					con = db.getconnection();

					ps = con.prepareStatement("SELECT * FROM crops");
					rs = ps.executeQuery();

					while (rs.next()) {
				%>

				<option value="<%=rs.getInt("id")%>">
					<%=rs.getString("crop_name")%> (Available:
					<%=rs.getInt("quantity")%> Kg | ₹
					<%=rs.getDouble("price")%> /Kg)
				</option>

				<%
				}
				} catch (Exception e) {
				out.println("<option>Error loading crops</option>");
				e.printStackTrace();
				}
				%>

			</select> <label>Buyer Name</label> <input type="text" name="buyer"
				placeholder="Enter buyer name" required> <label>Quantity
				(Kg)</label> <input type="number" name="quantity"
				placeholder="Enter quantity" required>

			<button type="submit">Purchase Now</button>

		</form>
	</div>

</body>
</html>

<%
try {
	if (rs != null)
		rs.close();
} catch (Exception e) {
}
try {
	if (ps != null)
		ps.close();
} catch (Exception e) {
}
try {
	if (con != null)
		con.close();
} catch (Exception e) {
}
%>
