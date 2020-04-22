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
                <li>
                    <a href="AdminAccount">
                        <i class="ti-face-smile"></i>
                        <p>Quản lí tài khoản</p>
                    </a>
                </li>
                <li class="active">
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
                    <a class="navbar-brand" href="#">Quản lí tin tức</a>
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
               		<div class="btn-group" style=" padding-bottom: 15px;padding-left: 20px;">
                           <a href="AdminNews" type="button" class="btn btn-default">
                             <i class="ti-arrow-left"></i>&nbsp;&nbsp;back
                           </a>
                    </div>
               	</div>
                <div class="row">
                    <div class="col-lg-5 col-md-5">
                    	 <div class="card card-user">
                            <div class="image" style="height: auto;">
                                <img src="${newsInfo.image}" alt="..."/>
                                
                            </div>
                            <div class="text-center" style="padding-bottom: 1px;">
                                 <h5><a href="#" data-toggle="modal" data-target="#changeImage" style="color: #525252; font-size: 16px;">Change image</a></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7">	
                        <div class="card">
                            <div class="header" style="float: left;">
                                <h4 class="title">Thông tin tin tức</h4>
                                <p class="category"></p>
                            </div>
                            
                            <div class="clearfix"></div>
                            <div class="content">
                                 <form action="UpdateNews" method="post">
                                 	<input type="hidden" name="news_id" value="${newsInfo.news_id}" />
                                 	<input type="hidden" name="account_id" value="${newsInfo.account_id}" />
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Người post</label>
                                                <input type="text" class="form-control border-input" name="name" value="${newsInfo.name}" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                            	<input type="hidden" id="Type" value="${newsInfo.type_id}" />
                                                <label>Thể loại</label>
                                                <select id="listType" name="ListType" class="form-control border-input">
                                                    <c:forEach items="${listTypeofNews}" var="listTypeofNews">
			                                        	<option class="dropdown" value="${listTypeofNews.type_id}">${listTypeofNews.typename}</option>
			                                        </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Ngày post</label>
                                                <input type="date" class="form-control border-input" name="date" value="${newsInfo.date}" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Tiêu đề</label>
                                                <textarea rows="3" class="form-control border-input" name="title" placeholder="Title">${newsInfo.title}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Nội dung bài viết</label>
                                                <textarea rows="10" class="form-control border-input" name="content_news" placeholder="Content">${newsInfo.content_news}</textarea>
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
        
        <!-- Modal đổi ảnh -->
        <div class="modal fade" id="changeImage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="padding-top: 100px;">
            <form action="UploadImageNews?IDupload=${newsInfo.news_id}" method="post" enctype="multipart/form-data">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                    	
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Thay ảnh tin tức</h4>
                        </div>
                        <div class="modal-body">
                            <p>Chọn ảnh</p>
						    	<input type="file" name="uploadFile" accept="image/*" onchange="loadFile(event)" /><br/>   
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-default">Cập nhật</button>
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

                        <li>
                            <a href="viewProfileAdmin">
                            	ITCENTER
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by <a href="https://www.facebook.com/kt.khanq" target="_blank">Khang</a> <a href="https://www.facebook.com/profile.php?id=100009118060733" target="_blank">Duyen</a> <a href="https://www.facebook.com/toi.lagio.3154" target="_blank">My</a>
                </div>
            </div>
        </footer>
    </div>
</div>
<script type="text/javascript">
(function () {
    k = document.getElementById('Type').value; //lấy giá trị trong hidden form
    for(var i=0; i < 3; i++)
    {
      if(document.getElementById('listType').options[i].value == k) {
        document.getElementById('listType').selectedIndex = i;
        return;
      }
    }  
    
})();
</script>
<script type="text/javascript">
(function () {
    var k = document.getElementById('message').value; //lấy thông báo
    if(k != ""){
        alert(k);
    }  
    
})();
</script>
<script>
        var loadFile = function (event) {
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('output');
                output.src = reader.result;
            };
            reader.readAsDataURL(event.target.files[0]);
        };// code display image upload
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
	
</html>