<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@page import="com.dainguyen.Model.Account" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>News</title> 
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!--bootstrap & Jquery-->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!--Icon fa-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!--CSS-->
	<link rel="stylesheet" type="text/css" href="css/mycssHome.css"/>
	<link rel="stylesheet" type="text/css" href="css/mycssHomeUser.css"/>
	<link rel="stylesheet" type="text/css" href="css/mycssHome1.css"/>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/news.css"/>
	<link rel="stylesheet" type="text/css" href="css/mycssKhoahoc.css" />
	<link rel="stylesheet" type="text/css" href="css/mycssHome1.css"/>
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
	<script src="js/myjsHome.js"></script>
	<script src="js/pager.js"></script>
</head>
<body>
	<!--
			==============================Hearder====================================
	-->
	<div class="container">
		<div class="topbar">
			<div id="menu">
				<ul>
					<%if(session.getAttribute("account")!=null)
						{ Account acc=(Account)session.getAttribute("account");
						%>
					<li class="dropdown">
    					<button class="btn btn_account dropdown-toggle" type="button" data-toggle="dropdown">
    						<img src="<%= acc.getAvatar() %>" class="img_avatar img-responsive" alt="Cinque Terre"/>
    						<span  class="dropbtn"><%=acc.getName() %></span>
					    	<span class="caret"></span>
						</button>
					    <ul class="dropdown-menu">
					      <li ><a href="ThongTinTaiKhoan?roleID=${account.role_id}">Thông tin tài khoản</a></li>
					      <li><a href="logout">Đăng xuất</a></li>
					    </ul>
					</li>		
					<%}else{ %>					
					<li class="dropdown">
						<span  class="dropbtn">TÀI KHOẢN</span>
						<div class="dropdown-content">
						    <a href="login">Đăng nhập</a>
						    <a href="Register_account">Đăng ký</a>
						</div>
					</li>			
					<%} %>						
					<li class="sdt"><span class="glyphicon glyphicon-earphone"></span>(+84)98777777 </li>
					<li class="gmail"><span class="	glyphicon glyphicon-envelope"></span>ITCENTER2017@GMAIL.COM</li>
				</ul>
			</div>
		</div>
		<header id="header">
			<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="30">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand" href="TrangChu">
							<img style="width: 220px;padding-top: 10px;" src="images/TC.png" />
						</a>
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" >
						<ul class="nav navbar-nav navbar-right">  
							<li class="dropdown"><a href="TrangChu">TRANG CHỦ</a></li>     
							<li class="dropdown">
								<a href="Course?topic_id=0" class="dropdown-toggle" data-toggle="dropdown">KHÓA HỌC<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Course">Các khóa học</a></li>
									<li><a href="LichKhaiGiang">Lịch khai giảng</a></li>          
								</ul>
							</li>
							<li class="active">
								<a href="News">TIN TỨC</a>
								
							</li> 
							<li><a href="Contact">LIÊN HỆ</a></li>
							<li class="dropdown">
								<a ><span class="glyphicon glyphicon-search"></span></a>
								<ul class="dropdown-menu">
									<li>
										<input type="text" id="timkiem" placeholder="Tìm kiếm">
									</li>
								</ul>
							</li>
						</ul>
						
					</div>
				</div><!--end container-->
			</nav><!--end nav-->
		</header><!--end header-->
	</div>
	<!--
			==============================CONTENT====================================
	-->
		<!-- Slider -->
		<div class="header-page">
		<div class="header-content" style="text-align: right;">
			<h1 >Tin tức</h1>		
		</div>
		<div class="new-breadcrumb">
				<ol class="breadcrumb">
					<li><a class="non-textdecoration" href="TrangChu"> <span
							class="glyphicon glyphicon-home"></span>
					</a></li>
					<li class="active">Tin tức</li>
				</ol>
			</div>
		</div>
	<!-- //top-header and slider -->
	<div class="container">
		<div class="banner-btm-agile">
			<div class="col-md-9 btm-wthree-left">
				<table id="tablepaging" class="table">
					<thead>
						<h1 style="margin-left:5%;">Tin tức</h1>
					</thead>
					<tbody>
						<c:forEach items="${news}" var="news_list">
							<tr>
								<td style="border-bottom:1px solid; border-width:90%">
									<div class="col-md-3">
										<div class="entry">
											<a class="non-textdecoration"
												href="NewsInfo?news_id=${news_list.news_id }"><img
												src="${news_list.image }" alt="khoahoc" style="width: 100%"></a>
										</div>
									</div>
									<div class="col-md-9">
										<div class="courseInfo">
											<div class="infoTop">
												<h3>
													<a href="NewsInfo?news_id=${news_list.news_id }">${news_list.title }</a>
												</h3>
												<h4>Create by: <strong> ${news_list.name }</strong></h4>
												<c:set var="content"
													value="${fn:substring((news_list.content_news), 0, 100)}" />
												<p>${content}...</p>
											</div>
											<div class="infoBot">
												<div class="row" style="padding-bottom: 20px;">
													<div style="float: right; padding-right: 25px;">
														<a href="NewsInfo?news_id=${news_list.news_id }" type="button"
															class="btn btn-default"> More&nbsp; <i
															class="fa fa-angle-right"></i>
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
					style="padding-top: 10px; padding-bottom: 30px; margin-left:40%" align="center">
				</div>
			</div>
			
			
			<!--Cột bên phải-->
			<div class="col-md-3 w3agile_blog_left">
				<div class="agileinfo_calender">
					<h3>LIÊN KẾT VỚI:</h3>
					<div class="w3ls-social-icons-1">
						<a class="facebook" href="#"><i class="fa fa-facebook"></i></a> <a
							class="twitter" href="#"><i class="fa fa-twitter"></i></a> <a
							class="linkedin" href="#"><i class="fa fa-google-plus"></i></a>
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
			<!--END cột bên phải-->
		</div>
	</div>
	<!--
	==========================Footer================
	-->
	<script type="text/javascript">
	var pager = new Pager('tablepaging', 5);
	pager.init();
	pager.showPageNav('pager', 'pageNavPosition');
	pager.showPage(1);
</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>