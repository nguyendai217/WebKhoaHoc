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
    <link href="assets/css/animate.min.css" rel="stylesheet" />

    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet" />

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
                    <a href="ViewProfileAdmin" class="simple-text"> ITCENTER </a>
                </div>
                <ul class="nav">
                    <li class="active">
                        <a href="AdminViewProfile"> <i class="ti-user"></i>
                            <p>Thông tin cá nhân</p>
                        </a>
                    </li>
                    <li>
                        <a href="AdminCourse"> <i class="ti-book"></i>
                            <p>Quản lí khóa học</p>
                        </a>
                    </li>
                    <li>
                        <a href="AdminClass"> <i class="ti-view-list-alt"></i>
                            <p>Quản lí lớp học</p>
                        </a>
                    </li>
                    <li>
                        <a href="AdminAccount"> <i class="fa fa-users"></i>
                            <p>Quản lí tài khoản</p>
                        </a>
                    </li>
                    <li>
                        <a href="AdminNews"> <i class="ti-write"></i>
                            <p>Quản lí tin tức</p>
                        </a>
                    </li>
                    <li class="active-pro">
                        <a href="TrangChu"> <i class="ti-home"></i>
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
                            <span class="sr-only">Toggle navigation</span> <span class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
                            <span class="icon-bar bar3"></span>
                        </button>
                        <a class="navbar-brand" href="#">Thông tin cá nhân</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img src="${adminAvatar}" class="img_avatar img-responsive" alt="Cinque Terre" />
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
                        <div class="col-lg-3 col-md-4">
                            <div class="card card-user">
                                <div class="image">
                                    <img src="assets/img/background.jpg" alt="..." />

                                </div>
                                <div class="content">
                                    <div class="author">
                                        <!--  <img class="avatar border-white" src="assets/img/faces/face-1.jpg" alt="..."/>   -->
                                        <img class="avatar border-white" alt="" src="${adminAvatar}">
                                        <h4 class="title">${adminInfo.name}<br /> <a href="#"><small>@${adminInfo.accountname}</small></a>
										</h4>
                                    </div>
                                </div>
                                <hr>
                                <div class="text-center" style="padding-bottom: 1px;">
                                    <h5>
										<a href="#" data-toggle="modal" data-target="#changeAvatar"
											style="color: #525252; font-size: 16px;">Change avatar</a>
									</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-8">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">Chỉnh sửa hồ sơ</h4>
                                </div>
                                <div class="content">
                                    <form action="AdminUpdateProfile" method="post">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Tên tài khoản</label>
                                                    <input type="text" name="username" class="form-control border-input" disabled placeholder="UserName" value="${adminInfo.accountname }">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Tên hiển thị</label>
                                                    <input type="text" name="name" class="form-control border-input" placeholder="Name" value="${adminInfo.name}" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="hidden" id="gioitinh" value="${adminInfo.sex}" />
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
                                                    <label>Ngày sinh</label>
                                                    <input type="date" name="birthday" class="form-control border-input" placeholder="PhoneNumber" value="${adminInfo.birthday}" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="text" name="mail" class="form-control border-input" placeholder="Email" value="${adminInfo.mail}" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Số điện thoại</label>
                                                    <input type="text" name="phonenumber" class="form-control border-input" placeholder="Phonenumber" value="${adminInfo.phonenumber}" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div style="float: left;">
                                            <button type="submit" class="btn btn-info btn-fill btn-wd">Update Profile
                                            </button>
                                        </div>
                                        <div style="float: right;">
                                            <h5>
												<a href="#" data-toggle="modal" data-target="#changePass"
													style="color: #525252; font-size: 16px;">Đổi mật khẩu</a>
											</h5>
                                        </div>
                                        <div class="clearfix"></div>

                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- Modal đổi avatar -->
            <div class="modal fade" id="changeAvatar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="padding-top: 100px;">
                <form id="avatarAdmin" action="uploadAvatarAdmin" method="post" enctype="multipart/form-data">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Thay ảnh đại diện</h4>
                            </div>
                            <div class="modal-body">
                                <p>Chọn ảnh</p>
                                <input type="file" name="uploadFile" accept="image/*" onchange="loadFile(event)" />
                                <br />
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-default">Cập nhật</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <!-- Modal đổi mk -->
            <div class="modal fade" id="changePass" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="padding-top: 80px;">
                <form id="avatarAdmin" action="AdminUpdatePassword" method="post">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content" style="color: #0000008a;">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Đổi mật khẩu</h4>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" id="oldpass1" name="oldpass0" value="${adminInfo.password}">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Mật khẩu cũ</label>
                                            <input type="password" id="oldpass2" name="oldpass" class="form-control border-input" placeholder="Old password" required>
                                            <p>
                                                <span style="color: red;" id="oldpass_error"></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Mật khẩu mới</label>
                                            <input type="password" id="password1" name="newpass" class="form-control border-input" placeholder="New password" required>
                                            <p>
                                                <span style="color: red;" id="password1_error"></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Xác nhận mật khẩu</label>
                                            <input type="password" id="password2" name="confirmpass" class="form-control border-input" placeholder="Confirm password" required>
                                            <p>
                                                <span style="color: red;" id="password2_error"></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" id="btnChangePass" class="btn btn-default">Thay Đổi</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <input type="hidden" id="message" value="${message}">
            <footer class="footer">
                <div class="container-fluid">
                    <nav class="pull-left">
                        <ul>

                            <li><a href="viewProfileAdmin"> ITCENTER </a></li>
                        </ul>
                    </nav>
                    <div class="copyright pull-right">
                        &copy;
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                    </div>
                </div>
            </footer>

        </div>
    </div>
    <script type="text/javascript">
        (function() {
            k = document.getElementById('gioitinh').value; //lấy giá trị trong hidden form
            for (var i = 0; i < 3; i++) {
                if (document.getElementById('listsex').options[i].value == k) {
                    document.getElementById('listsex').selectedIndex = i;
                    return;
                }
            }

        })();
    </script>
    <script type="text/javascript">
        (function() {
            k = document.getElementById('message').value; //lấy thông báo
            if (k != "") {
                alert(k);
            }

        })();
    </script>
</body>
<!--   Core JS Files   -->
<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="assets/js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script src="assets/js/paper-dashboard.js"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>
<script  src="assets/js/changePass.js"></script>
<script>
    var loadFile = function(event) {
        var reader = new FileReader();
        reader.onload = function() {
            var output = document.getElementById('output');
            output.src = reader.result;
        };
        reader.readAsDataURL(event.target.files[0]);
    }; // code display image upload
</script>

</html>
