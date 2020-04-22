<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Admin Page</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons-->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/themify-icons.css" rel="stylesheet">
    <script type="text/javascript" src="js/pager.js"></script>
</head>
<body>
<div class="wrapper">
	<div class="sidebar" data-background-color="white" data-active-color="danger">
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="ViewProfileAdmin" class="simple-text">
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
                        <i class="fa fa-users"></i>
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
                    <a class="navbar-brand" href="#">Quản lí tài khoản</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="${adminAvatar}" class="img_avatar img-responsive" alt="Cinque Terre"/>
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
                    <div class="col-md-12">
                    	<div class="row">
                    		<div class="btn-group" style="float: left; padding-bottom: 15px;padding-left: 17px;">
                                <form action="SearchAccount" method="post">
                                    <input style="float: left; width: 75%" class="form-control border-input" type="text" name="search" placeholder="Search">
                                    <button type="submit" style="float: right; margin-top: 2px;" class="btn btn-default"><i class="ti-search"></i></button>
                                </form>
                            </div>
                            
                    		<div class="btn-group" style="margin-left: 10px; float: right; padding-right: 20px;">
                            	<button type="submit" form="form1" name="action" value="reset" class="btn btn-default" onclick="return getConfirmation2();"><span class="ti-reload"></span>&nbsp;&nbsp;Reset password</button>
                    		</div>
                    		<div class="btn-group" style="margin-left: 10px; float: right; padding-right: 5px;">
                            	<button type="submit" form="form1" name="action" value="delete" class="btn btn-default" onclick="return getConfirmation();"><span class="ti-trash"></span>&nbsp;&nbsp;Xóa</button>
                    		</div>
                    		<div class="btn-group" style="float: right; padding-bottom: 15px;padding-right: 5px;">
                                <a href="AddAccount" type="button" class="btn btn-default">
                                  <i class="ti-plus"></i>&nbsp;&nbsp;Thêm
                                </a>
                            </div>
                    	</div>
                    	<div class="card">
                            <div class="header" style="float: left;">
                                <h4 class="title">Danh sách tài khoản</h4>
                                <p class="category"></p>
                            </div>
                            <div class="btn-group" style="float: right;width: 225px; padding-top: 13px;padding-right: 17px;padding-bottom: 13px;">
                                <form action="loadBasedonRole" method="post">
                                	<input type="hidden" id="role" value="${role}">
                                    <select style="float: left; width: 62%" id="roleID" name="roleID" class="form-control border-input">
                                        <option class="dropdown" value="4">Tất cả</option>
                                        <option class="dropdown" value="1">Admin</option>
                                        <option class="dropdown" value="2">Giảng viên</option>
                                        <option class="dropdown" value="3">Học viên</option>
                                    </select>
                                    <button type="submit" style="float: right; margin-top: 2px;" class="btn btn-default">&nbsp;Lọc</button>
                                </form>
                                
                            </div>
                            <div class="clearfix"></div>
                            <form action="AdminDeleAccount" id="form1" method="post" onsubmit="return checkCheckBoxesAccount(this)">
                            <div class="content table-responsive table-full-width">
                                <table id="tablepaging" class="table table-striped">
                                    <thead>
                                    	<th>&nbsp;</th>
                                        <th>Tài khoản</th>
                                        <th>Tên người dùng</th>
                                        <th>Ngày sinh</th>
                                        <th>Giới tính</th>
                                        <th>Email</th>
                                        <th>SĐT</th>
                                        <th>Chức quyền</th>
                                        <th>Chi tiết</th>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${listAccount}" var="listAccount">
                                    		<tr>
                                    			<td>
                                    				<div class="checkbox icheck-primary">
                                    				<input type="checkbox" name="accountDel[]" value="${listAccount.account_id}"/>
                                    				</div>
                                    			</td>
	                                            <td>
													<div >
	                                                    <span>
	                                                        <span class="avatar">
	                                                            <img class="avatar" src="${listAccount.avatar}">
	                                                        </span>
	                                                        ${listAccount.accountname}
	                                                    </span>
	                                                </div>
												</td>
	                                            <td>${listAccount.name}</td>
	                                            <td>${listAccount.birthday}</td>
	                                            <td>${listAccount.sex}</td>
	                                            <td>${listAccount.mail}</td>
	                                            <td>${listAccount.phonenumber}</td>
	                                            <td>${listAccount.rolename}</td>
	                                            <td><a href="AdminViewAccountInfo?account_id=${listAccount.account_id}" 
	                                            style="font-size: 16px; color: black; padding-left: 30px;" class="ti-pencil-alt"></a></td>
                                        	</tr>
                                    	</c:forEach>
                                    </tbody>
                                </table> 
                                <div id="pageNavPosition" style="padding-top: 20px" align="center"></div>
                        	</div>
                        	</form>
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
<script type="text/javascript">
	var pager = new Pager('tablepaging', 5);
	pager.init();
	pager.showPageNav('pager', 'pageNavPosition');
	pager.showPage(1);
</script>

<script type="text/javascript">
(function () {
	var kk = document.getElementById('message').value; //lấy thông báo
    if(kk != ""){
        alert(kk);
    }
})();
</script>
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
	<script type="text/javascript" src="js/myadmin.js"></script>
	
</body>
</html>