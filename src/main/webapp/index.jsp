<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Farmer Registration</title>

<!-- Bootstrap 4 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<style>
body {
	background: linear-gradient(to right, #74ebd5, #9face6);
	min-height: 100vh;
}

.card {
	border-radius: 18px;
	border: none;
}

.card-header {
	background: linear-gradient(to right, #667eea, #764ba2);
	color: #fff;
	font-size: 22px;
	font-weight: bold;
	text-align: center;
	border-radius: 18px 18px 0 0;
	padding: 15px;
}

.form-control {
	border-radius: 12px;
	padding: 10px;
}

.form-control:focus {
	box-shadow: 0 0 6px rgba(102, 126, 234, 0.6);
	border-color: #667eea;
}

.icon {
	color: #667eea;
	margin-right: 8px;
}

.btn-primary {
	background: linear-gradient(to right, #667eea, #764ba2);
	border: none;
	border-radius: 25px;
	padding: 10px 35px;
	font-size: 16px;
}

.btn-primary:hover {
	opacity: 0.9;
}
</style>

</head>
<body>

	<!-- Navbar -->
	<%@ include file="nav.jsp"%>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">

				<div class="card shadow-lg">

					<div class="card-header">👨‍🌾 Farmer Registration</div>

					<div class="card-body">

						<form method="post" action="FarmerRegister">

							<!-- Full Name -->
							<div class="form-group">
								<label> <i class="fas fa-user icon"></i> Full Name
								</label> <input type="text" name="name" class="form-control"
									placeholder="Enter your full name" required>
							</div>

							<!-- Mobile Number -->
							<div class="form-group">
								<label> <i class="fas fa-phone icon"></i> Mobile Number
								</label> <input type="tel" name="mobile" class="form-control"
									placeholder="Enter 10-digit mobile number" pattern="[0-9]{10}"
									required>
							</div>

							<!-- Username -->
							<div class="form-group">
								<label> <i class="fas fa-user-circle icon"></i> Username
								</label> <input type="text" name="uname" class="form-control"
									placeholder="Choose a username" required>
							</div>

							<!-- Password -->
							<div class="form-group">
								<label> <i class="fas fa-lock icon"></i> Password
								</label> <input type="password" name="password" class="form-control"
									placeholder="Create a strong password" required>
							</div>

							<!-- Submit Button -->
							<div class="text-center mt-4">
								<button type="submit" class="btn btn-primary">
									<i class="fas fa-user-plus"></i> Register
								</button>
							</div>

						</form>

					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>
