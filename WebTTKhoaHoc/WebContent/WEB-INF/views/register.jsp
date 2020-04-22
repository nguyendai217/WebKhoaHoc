<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--bootstrap & Jquery-->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!--CSS-->
<link rel="stylesheet" type="text/css" href="css/mycssLogin.css" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<script src="js/myjsLogin.js"></script>
<script src="js/md5.js"></script>
</head>
<body class="login-page light">
	<div class="login-box">
		<div class="card">
			<div class="body">
				<div class="row">
					<div class=" image_logo">
						<div class="login-logo align-center">
							<a href="TrangChu"> <img src="images/LOGO_trang.jpg" alt=""
								class="img-responsive img-circle align-center">
							</a>
							<p>ĐĂNG KÝ THÀNH VIÊN</p>
						</div>
					</div>
				</div>
				<!--Form đăng ký-->
				<form id="log_in" method="POST" action="register">
					<%
						if (request.getAttribute("errorStr") != null) {
						out.println("<p style='color:red; text-align:center;'>" + request.getAttribute("errorStr") + "</p>");
					}
					%>
					<div class="form-group">
						<label>Tên đăng nhập</label>
						<!--UserName-->
						<input type="text" class="form-control" id="username1" name="username1" placeholder="Enter username">
						<p>
							<span class="error" id="username1_error"></span>
						</p>
					</div>

					<div class="form-group">
						<label>Mật khẩu</label>
						<!--Password-->
						<input type="password" class="form-control" id="password0" name="password0" placeholder="Enter password">
						<p>
							<span class="error" id="password0_error"></span>
						</p>
					</div>

					<div class="form-group">
						<label>Nhập lại mật khẩu</label>
						<!--Password-->
						<input type="password" class="form-control" id="password1"
							placeholder="Enter again password">
						<p>
							<span class="error" id="password1_error"></span>
						</p>
					</div>

					<div class="form-group">
						<label>Họ và tên</label>
						<!--FullName-->
						<input type="text" class="form-control" id="name" name="name" placeholder="Enter fullname">
						<p>
							<span class="error" id="name_error"></span>
						</p>
					</div>

					<div class="form-group">
						<label>Ngày sinh</label>
						<!--Ngày Sinh-->
						<input type="date" class="form-control" id="birthday"
							name="birthday" value="1997-01-01">
					</div>

					<div class="form-group">
						<label>Giới tính</label><br /> <input name="sex"
							class="custom-control-indicator" type="radio" value="nam" checked />Nam
						<input name="sex" class="custom-control-indicator" type="radio"
							value="nu">Nữ
					</div>

					<div class="form-group">
						<label>Email</label>
						<!--Password-->
						<input type="email" class="form-control" id="email" name="email"
							placeholder="Enter email">
						<p>
							<span class="error" id="email_error"></span>
						</p>
					</div>

					<div class="form-group">
						<label>Số điện thoại</label>
						<!--Số điện thoại-->
						<input type="number" class="form-control" id="phonenumber" name="phonenumber" placeholder="Enter phonenumber">
						<p>
							<span class="error" id="phone_error"></span>
						</p>
					</div>

					<!--Submit tài khoản-->
					<button id="btnDangKy"
						class="btn btn-block btn-primary waves-effect" type="submit">SIGNIN</button>

					<p class="text-muted text-center p-t-20">
						<small>Already have an account?</small>
					</p>
					<!--link Create-->
					<a class="btn btn-sm btn-default btn-block" href="login">Login Now</a>
				</form>
			</div>
		</div>
	</div>
	<!--end register-box-->
</body>
</html>