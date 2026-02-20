<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us - Agriculture Management System</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
	body {
		background-color: #f4f9f4;
		font-family: Arial, sans-serif;
	}

	.about-card {
		background-color: #ffffff;
		border: 2px solid #81C784;   /* Soft green border */
		border-radius: 15px;         /* Smooth rounded corners */
		box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
		padding: 25px;
	}

	h2 {
		color: #2E7D32;
	}

	h4 {
		color: #388E3C;
	}
</style>

</head>
<body>

	<!-- Navbar -->
	<%@ include file="nav.jsp"%>

	<!-- About Us Section -->
	<div class="container mt-5 mb-5">
		<div class="about-card">

			<h2 class="text-center">About Us</h2>
			<hr style="border-top: 2px solid #A5D6A7; width: 50%; margin: auto;">

			<p class="mt-3">
				The Agriculture Management System is developed to digitalize
				agricultural operations and simplify farm management activities.
				Our system helps manage farmer records, crop details, fertilizer
				tracking, and sales information efficiently.
			</p>

			<h4 class="mt-4">Our Mission</h4>
			<p>
				To provide a simple and effective platform that reduces manual
				paperwork and improves data management in agriculture.
			</p>

			<h4 class="mt-3">Our Vision</h4>
			<p>
				To empower farmers and agricultural businesses with modern
				technology for better productivity and sustainable growth.
			</p>

			<h4 class="mt-3">Contact Information</h4>
			<p>
				<strong>Developer:</strong> Thilak Gangadhara <br>
				<strong>Mobile:</strong> +91 8374554943 <br>
				<strong>Email:</strong> thilakgangadhara@gmail.com
			</p>

			<h4 class="mt-3">Technologies Used</h4>
			<ul>
				<li>Java</li>
				<li>Servlets</li>
				<li>JSP</li>
				<li>JDBC</li>
				<li>MySQL</li>
				<li>HTML, CSS, Bootstrap</li>
			</ul>

		</div>
	</div>

</body>
</html>
