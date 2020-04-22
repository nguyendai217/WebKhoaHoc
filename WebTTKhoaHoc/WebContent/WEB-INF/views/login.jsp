<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--bootstrap & Jquery-->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!--CSS-->
	<link rel="stylesheet" type="text/css" href="css/mycssLogin.css"/>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<script src="js/myjsLogin.js"></script>
	<script src="js/md5.js"></script>
</head>
<body class="login-page light" >
	<div class="login-box">
	<div class="card">
            <div class="body">
                <div class="row">
                    <div class=" image_logo">
                        <div class="login-logo align-center">
                        	<a href="TrangChu">
                            <img src="images/LOGO_trang.jpg" alt="" class="img-responsive img-circle align-center">
                            </a>
                            <p>ĐĂNG NHẬP </p>
                        </div>
                    </div>
                </div>
            <!--Form đăng nhập-->
                <form id="log_in" method="POST" action="login">
                	<%if(request.getAttribute("errorStr")!=null){
                		out.println("<p style='color:red; text-align:center;'>"+request.getAttribute("errorStr")+"</p>");
                	}%>
                	
                    <div class="form-group">
				      <label >Tên đăng nhập:</label>
				      <!--UserName-->
				      <input type="text" class="form-control" id="username" name="userName" placeholder="Enter username"/>
				      <p><span class="error" id="username_error"></span></p>
				    </div>
				    <div class="form-group">
				      <label >Mật khẩu:</label>
				      <!--Password-->
				      <input type="password" class="form-control" id="password" name="password" placeholder="Enter password"/>
				      <p><span class="error" id="password_error"></span></p>
				    </div>
				    <div class="row">
				    	<!--Remember-->
				    	<div class="col-xs-6 checkbox p-t-5">
					      <label><input type="checkbox" name="remember" value="Y"/> Remember me</label>
					    </div> 
					    <!--Quên tài khoản-->
	                    <div class="col-xs-6 align-right p-t-5">
	                        <a href="forgot-password.html">Forgot Password?</a>
	                    </div>
				    </div>
				    <!--Submit tài khoản-->
                    <button id="btnDangNhap" class="btn btn-block btn-primary waves-effect" type="submit">LOG IN</button>
					
                    <p class="text-muted text-center p-t-20">
                        <small>Do not have an account?</small>
                    </p>
					<!--link Create-->
                    <a class="btn btn-sm btn-default btn-block" href="Register">Create an account</a>

                </form>
            </div>
    </div>
	</div><!--end login-box-->
</body>
</html>