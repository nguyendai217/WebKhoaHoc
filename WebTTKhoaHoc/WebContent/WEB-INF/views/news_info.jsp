<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	<link rel="stylesheet" type="text/css" href="css/mycssHome1.css"/>
	<link rel="stylesheet" type="text/css" href="css/mycssHomeUser.css"/>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<script src="js/myjsHome.js"></script>
	<link rel="stylesheet" type="text/css" href="css/news.css"/>


	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
	<!-- stylesheet -->
	
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
    						<span  class="dropbtn"><%=acc.getAccountname() %></span>
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
							<li><a href="TrangChu">TRANG CHỦ</a></li>     
							<li class="dropdown">
								<a href="Course?topic_id=0" class="dropdown-toggle" data-toggle="dropdown">KHÓA HỌC<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Course?topic_id=0">Các khóa học</a></li>
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
	
	<div style="height:50px;"></div>
	<div class="container">
		<div class="banner-btm-agile">
			<h2>Chi Tiết Tin</h2><br>
			<div class="col-md-9 btm-wthree-left">
				<div class="single-left">
				<div class="single-left1">
					<img src="${news_info.image }" alt=" " class="img-responsive" />
					<h3>${news_info.title }</h3>
					<ul>
						<li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a href="#">${news_info.name}</a></li>
						<li><span class="glyphicon glyphicon-tag" aria-hidden="true"></span><a href="#">${news_info.date}</a></li>
					</ul>
					<p>${news_info.content_news }</p>
				</div>
				
				<!-- Câu châm ngôn của người ta -->
				<div class="admin">
					<p>"Người thảo luận để tìm ra cách giải hay cho một bài toán khó sẽ trở thành lập trình viên giỏi. 
					Người hay hỏi bài tập thì không. Còn bạn thì sao?.</p>
					<a href="#"><i>Dạy nhau học</i></a>
				</div>
				
			</div>

			</div>
			<!-- //btm-wthree-left -->
				<!--Cột bên phải-->
			<div class="col-md-3 w3agile_blog_left">
				<div class="agileinfo_calender">
				<h3>LIÊN KẾT VỚI:</h3>
				<div class="w3ls-social-icons-1">
					<a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
					<a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
					<a class="linkedin" href="#"><i class="fa fa-google-plus"></i></a>
				</div>
				</div>
				<div class="w3l_categories">
					<h3>Thể loại</h3>
					<ul>
						<c:forEach items="${typenews}" var="list_type">
						<li><a href="News?type_id=${list_type.type_id}"><span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>${list_type.typename }</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="w3ls_recent_posts">
						<h3>Bài vừa đăng</h3>
						<c:forEach items="${news}" var="news" begin="0" end="2">
						<div class="agileits_recent_posts_grid">
							<div class="agileits_recent_posts_gridl">
								<div class="w3agile_special_deals_grid_left_grid">
										<a href="Muc_Tin.html"><img src="images/TinTuc/${news.image }" class="img-responsive" alt="" /></a>
									</div>
							</div>
							<div class="agileits_recent_posts_gridr">
								<c:set var = "title" value = "${fn:toLowerCase(news.title)}" />
								<h4><a href="News_Info?news_id=${news.news_id }">${title }</a></h4>
								<h5><i class="fa fa-calendar" aria-hidden="true"></i>${news.date }</h5>
							</div>
							<div class="clearfix"> </div>
						</div>
						</c:forEach>
				</div>
				<!-- //btm-wthree-right -->
				<div class="clearfix"></div>
			</div>
		<!--END cột bên phải-->
		</div>
	</div>
		<!--
	==========================Footer================
	-->
<jsp:include page="footer.jsp"></jsp:include>
<script src="js/bootstrap.js"></script>
</body>
</html>