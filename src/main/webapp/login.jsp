<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Farmer Login</title>

<!-- Bootstrap 4 CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
body {
	margin: 0;
	min-height: 100vh;
	background: linear-gradient(135deg, #d4fc79, #96e6a1, #a1c4fd);
	font-family: 'Segoe UI', sans-serif;
}

/* Center section below navbar */
.login-wrapper {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 60px 15px;
}

.login-container {
	background: linear-gradient(145deg, #ffffff, #f1f8e9);
	padding: 35px;
	border-radius: 15px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
	border: 1px solid #c8e6c9;
}

.login-title {
	text-align: center;
	margin-bottom: 25px;
	color: #1b5e20;
	font-weight: 600;
}

.form-control {
	border-radius: 8px;
	height: 45px;
	border: 1px solid #a5d6a7;
}

.form-control:focus {
	border-color: #2e7d32;
	box-shadow: 0 0 6px rgba(46, 125, 50, 0.3);
}

.btn-login {
	background: linear-gradient(to right, #2e7d32, #66bb6a);
	color: white;
	border: none;
	border-radius: 8px;
	height: 45px;
	font-weight: 500;
	transition: 0.3s;
}

.btn-login:hover {
	background: linear-gradient(to right, #1b5e20, #43a047);
	color: white;
}

.small-text {
	font-size: 14px;
}
</style>

</head>
<body>

	<!-- Navbar -->
	<%@ include file="nav.jsp"%>

	<div class="login-wrapper">
		<div class="login-container">

			<h4 class="login-title">Farmer Login</h4>

			<form method="post" action="FarmerLogin">

				<div class="form-group">
					<label>Username</label>
					<input type="text" name="uname"
						class="form-control"
						placeholder="Enter Username" required>
				</div>

				<div class="form-group">
					<label>Password</label>
					<input type="password" name="password"
						class="form-control"
						placeholder="Enter Password" required>
				</div>

				<button type="submit" class="btn btn-login btn-block">
					Login
				</button>

			</form>

			<p class="text-center mt-3 small-text">
				Don't have an account?
				<a href="index.jsp" style="color:#1b5e20; font-weight:500;">
					Register Here
				</a>
			</p>

		</div>
	</div>

</body>
</html>
