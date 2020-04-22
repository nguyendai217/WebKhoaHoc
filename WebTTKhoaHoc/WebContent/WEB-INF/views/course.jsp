<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dainguyen.Model.Account"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Khóa học</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--bootstrap & Jquery-->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!--Icon fa-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--CSS-->
<link rel="stylesheet" type="text/css" href="css/mycssHome.css" />
<link rel="stylesheet" type="text/css" href="css/mycssKhoahoc.css" />
<link rel="stylesheet" type="text/css" href="css/mycssHomeUser.css" />
<link rel="stylesheet" type="text/css" href="css/news.css" />
<link rel="stylesheet" type="text/css" href="css/style1.css" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<script src="js/myjsHome.js"></script>
<script type="text/javascript" src="js/pager.js"></script>
</head>
<body>
	<!--
			==============================Hearder====================================
	-->
	<div class="container">
		<div class="topbar">
			<div id="menu">
				<ul>
					<%
						if (session.getAttribute("account") != null) {
						Account acc = (Account) session.getAttribute("account");
					%>
					<li class="dropdown">
						<button class="btn btn_account dropdown-toggle" type="button"
							data-toggle="dropdown">
							<img src="<%=acc.getAvatar()%>" class="img_avatar img-responsive"
								alt="Cinque Terre" /> <span class="dropbtn"><%=acc.getName()%></span>
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="ThongTinTaiKhoan?roleID=${account.role_id}">Thông
									tin tài khoản</a></li>
							<li><a href="logout">Đăng xuất</a></li>
						</ul>
					</li>
					<%
						} else {
					%>
					<li class="dropdown"><span class="dropbtn">TÀI KHOẢN</span>
						<div class="dropdown-content">
							<a href="login">Đăng nhập</a> <a href="Register_account">Đăng
								ký</a>
						</div></li>
					<%
						}
					%>

					<li class="sdt"><span class="glyphicon glyphicon-earphone"></span>(+84)98777777
					</li>
					<li class="gmail"><span class="	glyphicon glyphicon-envelope"></span>ITCENTER2017@GMAIL.COM</li>
				</ul>
			</div>
		</div>
		<header id="header">
			<nav class="navbar navbar-inverse" data-spy="affix"
				data-offset-top="30">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="TrangChu"> <img
							style="width: 220px; padding-top: 10px;" src="images/TC.png" />
						</a>
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>

					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a href="TrangChu">TRANG CHỦ</a></li>
							<li class="active dropdown"><a href="Course"
								class="dropdown-toggle" data-toggle="dropdown">KHÓA HỌC<span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Course">Các khóa học</a></li>
									<li><a href="LichKhaiGiang">Lịch khai giảng</a></li>
								</ul></li>
							<li><a href="News">TIN TỨC</a></li>
							<li><a href="Contact">LIÊN HỆ</a></li>
							<li class="dropdown"><a><span
									class="glyphicon glyphicon-search"></span></a>
								<ul class="dropdown-menu">
									<li><input type="text" id="timkiem" placeholder="Tìm kiếm">
									</li>
								</ul></li>
						</ul>

					</div>
				</div>
				<!--end container-->
			</nav>
			<!--end nav-->
		</header>
		<!--end header-->
	</div>
	<!--
			=======================================
	-->

	<div class="header-page">
		<div class="header-content">
			<div style="text-align: right;">
				<h1>Khóa học</h1>
				<h4>Tổng hợp tất cả các khóa học</h4>
			</div>
			<div class="new-breadcrumb">
				<ol class="breadcrumb">
					<li><a class="non-textdecoration" href="TrangChu"> <span
							class="glyphicon glyphicon-home"></span>
					</a></li>
					<li class="active">Khóa học</li>
				</ol>
			</div>
		</div>
	</div>
	<!--
		==============================content===================================
	-->

	<div class="container" style="font-family: 'Roboto', sans-serif;">

		<div class="body-page">
			<div class="row">
				<div class="col-md-1">
				
				</div>
				<!-- Danh sách khóa học -->
				<div id="homeCourse" class="col-md-8">
					<div class="coursesWrapper">
						<div class="searchWrapper">
							<div class="pull-left">
								<h2 style="color: black;">Khóa học tiêu biểu</h2>
							</div>
							<div class="filter">
								<span>Sắp xếp theo:&nbsp;&nbsp;</span>
								<div class="btn-Group">
									<button type="button" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">Mới nhất&nbsp;</button>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="cardWrapper">
							<div class="itemCard clearfix">
								<table id="tablepaging" class="table">
									<thead style="display: none;">
										<th>&nbsp;</th>
									</thead>
									<tbody>
										<c:forEach items="${course}" var="list">
											<tr>
												<td>
													<div class="col-sm-5">
														<div class="entry">
															<a class="non-textdecoration"
																href="CourseInfo?course_id=${list.course_id }"><img
																src="${list.courseimage }" alt="khoahoc"
																style="width: 100%"></a>
														</div>
													</div>
													<div class="col-sm-7">
														<div class="courseInfo">

															<div class="infoTop">
																<a class="non-textdecoration"
																	href="CourseInfo?course_id=${list.course_id }">
																	<h4 style="color: black">${list.coursename }</h4>
																</a>
																<c:set var="content"
																	value="${fn:substring(list.info, 0, 100)}" />
																<p>${content }...</p>
															</div>
															<div class="infoBot">
																<div class="row" style="padding-bottom: 20px;">
																	<!-- <div style="float: left; padding-left: 25px;">
														<span class="couseText">Giảng viên: Lê Tấn Khang</span>
													</div> -->
																	<div style="float: right; padding-right: 25px;">
																		<a href="CourseInfo?course_id=${list.course_id }"
																			type="button" class="btn btn-default"> More&nbsp;
																			<i class="fa fa-angle-right"></i>
																		</a>
																	</div>
																</div>
															</div>

														</div>
													</div>
												</td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div id="pageNavPosition" class="pagination pageCourse"
									style="padding-top: 10px; padding-bottom: 30px; margin-left:30%" align="center">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3 w3agile_blog_left">
					<div class="agileinfo_calender">
						<h3>LIÊN KẾT VỚI:</h3>
						<div class="w3ls-social-icons-1">
							<a class="facebook" href="#"><i class="fa fa-facebook"></i></a> <a
								class="twitter" href="#"><i class="fa fa-twitter"></i></a> <a
								class="linkedin" href="#"><i class="fa fa-google-plus"></i></a>
						</div>
					</div>
					
					<div agileinfo_calender>
					<h3>DANH MỤC KHÓA HỌC :</h3>
						<!-- Danh mục khóa học -->
					<div class="list-group panel-title">
						<c:forEach items="${topic}" var="list_topic">
							<c:choose>
								<c:when test="${id==list_topic.topic_id }">
									<a href="Course?topic_id=${list_topic.topic_id }"
										class="active list-group-item">${list_topic.topicname }</a>
								</c:when>
								<c:otherwise>
									<a href="Course?topic_id=${list_topic.topic_id }"
										class="list-group-item">${list_topic.topicname }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
					
					</div>
					<div class="w3l_categories">
						<h3>Thể loại</h3>
						<ul>
							<c:forEach items="${typenews}" var="list_type">
								<li><a href="News?type_id=${list_type.type_id}"><span
										class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>${list_type.typename }</a></li>
							</c:forEach>
						</ul>
					</div>
					<div class="w3ls_recent_posts">
						<h3>Bài vừa đăng</h3>
						<c:forEach items="${news1}" var="news1" begin="0" end="2">
							<div class="agileits_recent_posts_gridr">
								<c:set var="title" value="${fn:toLowerCase(news1.title)}" />
								<h4>
									<a href="NewsInfo?news_id=${news1.news_id }">${title }</a>
								</h4>
								<h5>
									<i class="fa fa-calendar" aria-hidden="true"></i>${news1.date }</h5>
							</div>
						</c:forEach>
					</div>
					<!-- //btm-wthree-right -->
				</div>
			</div>
		</div>
	</div>

	<!--
	==========================Footer================
	-->
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript">
	var pager = new Pager('tablepaging', 5);
	pager.init();
	pager.showPageNav('pager', 'pageNavPosition');
	pager.showPage(1);
</script>
</body>
</html>