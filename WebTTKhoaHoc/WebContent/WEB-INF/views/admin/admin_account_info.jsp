<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    

<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    
	<title>Admin Page</title>
	<link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="img/favicon.png">
    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/themify-icons.css" rel="stylesheet">
</head>
<body>
<div class="wrapper">
	<div class="sidebar" data-background-color="white" data-active-color="danger">
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="AdminViewProfile" class="simple-text">
                    ITCENTER
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="AdminViewProfile">
                        <i class="ti-user"></i>
                        <p>Thông tin cá nhân</p>
                    </a>
                </li>
                <li>
                    <a href="AdminCourse">
                        <i class="ti-book"></i>
                        <p>Quản lí khóa học</p>
                    </a>
                </li>
                <li>
                    <a href="AdminClass">
                        <i class="ti-view-list-alt"></i>
                        <p>Quản lí lớp học</p>
                    </a>
                </li>
                <li class="active">
                    <a href="AdminAccount">
                        <i class="ti-face-smile"></i>
                        <p>Quản lí tài khoản</p>
                    </a>
                </li>
                <li>
                    <a href="AdminNews">
                        <i class="ti-write"></i>
                        <p>Quản lí tin tức</p>
                    </a>
                </li>
                <li class="active-pro">
                    <a href="TrangChu">
                        <i class="ti-home"></i>
                        <p>Xem trang chủ</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel">
		<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="AdminAccount">Quản lí tài khoản</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="${adminAvatar}" class="img_avatar img-responsive" alt=""/>
                                    <p>&nbsp;${adminName}&nbsp;</p>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="logout">Đăng xuất</a></li>
                                
                              </ul>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
            	<div class="row">
            		<div class="btn-group" style=" padding-bottom: 15px;padding-left: 20px;">
                        <a href="AdminAccount" type="button" class="btn btn-default">
                          <i class="ti-arrow-left"></i>&nbsp;back
                        </a>
                    </div>
                </div>
                <div class="row">
                	
                    <div class="col-lg-3 col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <img src="assets/img/background.jpg" alt=""/>
                            </div>
                            <div class="content">
                                <div class="author">
                                  <!--  <img class="avatar border-white" src="assets/img/faces/face-1.jpg" alt="..."/>   -->
                                  <img class="avatar border-white" alt="" src="${usInfo.avatar}">
                                  <h4 class="title">${usInfo.name}<br />
                                  </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Thông tin tài khoản</h4>
                            </div>
                            <div class="content">
                                <form action="UpdateAccount" method="post">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Tên tài khoản</label>
                                                <input type="hidden" name="accountID" value="${usInfo.account_id}">
                                                <input type="text" name="username" class="form-control border-input" placeholder="Username" value="${usInfo.accountname}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                            	<label>Role</label>
                                                <input type="hidden" id="role" value="${usInfo.rolename}">
                                                <input type="text" name="role" class="form-control border-input" disabled="disabled" placeholder="Role" value="${usInfo.rolename}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Tên người dùng</label>
                                                <input type="text" name="name" class="form-control border-input" placeholder="Name" value="${usInfo.name}"  required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Ngày sinh</label>
                                                <input type="text" name="birthday" class="form-control border-input"  placeholder="Birthday" value="${usInfo.birthday}" required >
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Giới tính</label>
                                                <select id="listsex" name="listsex" class="form-control border-input">
                                                     <option class="dropdown" value="Nam">Nam</option>
                                                     <option class="dropdown" value="Nữ">Nữ</option>
                                                 </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input type="text" name="mail" class="form-control border-input"  placeholder="Email" value="${usInfo.mail}" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Số điện thoại</label>
                                                <input type="text" name="phonenumber" class="form-control border-input"  placeholder="Phone number" value="${usInfo.phonenumber}" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <button type="submit" class="btn btn-info btn-fill btn-wd">Update</button>
                                    </div>
                                    <div class="clearfix"></div>

                                </form>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <input type="hidden" id="message" value="${message}">
        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>

                        <li>
                            <a href="viewProfileAdmin">
                            	ITCENTER
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script>
                </div>
            </div>
        </footer>
    </div>
</div>
</body>
	<!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>
	<script src="assets/js/changePass.js"></script>
</html>