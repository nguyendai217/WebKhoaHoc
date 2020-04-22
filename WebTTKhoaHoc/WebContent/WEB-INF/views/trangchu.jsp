<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Home</title>
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
<link rel="stylesheet" type="text/css" href="css/mycssHomeUser.css" />

<link rel="stylesheet" href="css/style.css" type="text/css" media="all">

</head>
<body>
    <jsp:include page="header.jsp"/>
	<!--
	=================================Slider=====================================
	-->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="images/trangchu/P3.png" alt="Los Angeles"
					style="width: 100%;">
			</div>

			<div class="item">
				<img src="images/trangchu/P1.png" alt="Chicago" style="width: 100%;">
			</div>

			<div class="item">
				<img src="images/trangchu/P2.png" alt="New york"
					style="width: 100%;">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!--
	================================NỘI DUNG=======================
  -->
	<!--
	===========================giới thiệu====================
  -->
	<div class="container-fluid bg-blue">
		<div class="container khung">
			<div class="gioithieu">
				<h2>Giới thiệu về trung tâm</h2>
				<p class="p_home">Lập trình web,di động,game,phần mềm... bất kì
					lúc nào học theo kinh nghiệm của các chuyên gia</p>
			</div>

			<div class="row" style="padding-top: 20px; padding-left: 5px;">
				<div class="col-md-6 container">
					<div style="width: 10%; float: left;">
						<i class="fa fa-graduation-cap iconHome"></i>
					</div>
					<div style="width: 87%; float: right;">
						<h4>Chuyên gia đào tạo</h4>
						<p class="color_blue">Đến với trung tâm, bạn sẽ được đào tạo
							chuyên sâu về tư duy và kĩ năng. Chúng tôi là những chuyên gia
							đào tạo. Nếu muốn thành công, hãy đến với ITCenter, sự tin tưởng
							là tuyệt đối.</p>
					</div>
				</div>
				<div class="col-md-6 container">
					<div style="width: 10%; float: left;">
						<i class="fa fa-desktop iconHome"></i>
					</div>
					<div style="width: 87%; float: right;">
						<h4>Cở sở vật chất</h4>
						<p class="color_blue">ITCenter - trung tâm được xây dựng với
							cơ sở vật chất thiết bị hiện đại. Sự hiện đại nơi đây giúp bạn
							tiếp cận thực tế với nền văn minh nhân loại. ITCenter sẽ là nơi
							tốt nhất dành cho bạn.</p>
					</div>
				</div>
			</div>
			<div class="row" style="padding-top: 30px; padding-left: 5px;">
				<div class="col-md-6 container">
					<div style="width: 10%; float: left;">
						<i class="fa fa-edit iconHome"></i>
					</div>
					<div style="width: 87%; float: right;">
						<h4>1500+ bài học</h4>
						<p class="color_blue">Với hơn 1500 khóa học liên quan đến lập
							trình và máy tính. ITCenter tự tin sẽ cung cấp cho bạn kho tàng
							kiến thức tuyệt vời mà bạn không thể tìm thấy ở bất cứ nơi đâu.</p>
					</div>
				</div>
				<div class="col-md-6 container">
					<div style="width: 10%; float: left;">
						<i class="fa fa-rocket iconHome"></i>
					</div>
					<div style="width: 87%; float: right;">
						<h4>Hoạt động</h4>
						<p class="color_blue">Cùng với những hoạt động vui chơi giải
							trí, giao lưu, v.v.. sẽ rèn luyện cho bạn những kĩ năng cần
							thiết, đồng thời tạo sân chơi lành mạnh sau những giờ học căng
							thẳng.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--
	========================Khóa học tiêu biểu================
	-->
	<div class="container-fluid" id="courseshome">
		<div class="container khung" style="text-align: center;">
			<div class="gioithieu" style="text-align: center;">
				<h2>Khóa học tiêu biểu</h2>
				<p class="p_home">Một số khóa học tiêu biểu của trung tâm</p>
			</div>
			<div class="row container">
				<c:forEach items="${courses}" var="cs" begin="0" end="2">
					<div class="col-md-4">
						<div class="thumbnail entry">
							<a href="CourseInfo?course_id=${cs.course_id }"
								class="non-textdecoration" target="_blank"> 
								<img
								src="${cs.courseimage }" alt="Nature"
								style="height: 250px; width: 100%">
							</a>
						</div>
						<div class="post-date">
							<span class="day">30</span> <span class="month">Oct</span>
						</div>
						<div class="caption hometext">
							<h4>${cs.coursename }</h4>
							<p style="font-size: 15px; color: #7c7c86;">${cs.description }</p>
						</div>
					</div>
				</c:forEach>
			</div>
			<!--end div khoa học-->


			<div class="row container" style="padding-top: 20px">
				<c:forEach items="${courses}" var="cs" begin="3" end="5">
					<div class="col-md-4">
						<div class="thumbnail entry">
							<a href="CourseInfo?course_id=${cs.course_id }"
								class="non-textdecoration" target="_blank"> <img
								src="${cs.courseimage }" alt="anh1"
								style="height: 250px; width: 100%">
							</a>
						</div>
						<div class="post-date">
							<span class="day">30</span> <span class="month">Oct</span>
						</div>
						<div class="caption hometext">
							<h4>${cs.coursename }</h4>
							<p style="font-size: 15px; color: #7c7c86;">${cs.description }</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	
	<!--
	========================Khóa học mới================
	-->
	<div class="container-fluid" id="courseshome">
		<div class="container khung" style="text-align: center;">
			<div class="gioithieu" style="text-align: center;">
				<h2>Khóa học mới</h2>
				<p class="p_home">Một số khóa học mới của trung tâm</p>
			</div>
			<div class="row container">
				<c:forEach items="${courses}" var="cs" begin="0" end="2">
					<div class="col-md-4">
						<div class="thumbnail entry">
							<a href="CourseInfo?course_id=${cs.course_id }"
								class="non-textdecoration" target="_blank"> 
								<img
								src="${cs.courseimage }" alt="Nature"
								style="height: 250px; width: 100%">
							</a>
						</div>
						<div class="post-date">
							<span class="day">30</span> <span class="month">Oct</span>
						</div>
						<div class="caption hometext">
							<h4>${cs.coursename }</h4>
							<p style="font-size: 15px; color: #7c7c86;">${cs.description }</p>
						</div>
					</div>
				</c:forEach>
			</div>
			<!--end div khoa học-->


			<div class="row container" style="padding-top: 20px">
				<c:forEach items="${courses}" var="cs" begin="3" end="5">
					<div class="col-md-4">
						<div class="thumbnail entry">
							<a href="CourseInfo?course_id=${cs.course_id }"
								class="non-textdecoration" target="_blank"> <img
								src="${cs.courseimage }" alt="anh1"
								style="height: 250px; width: 100%">
							</a>
						</div>
						<div class="post-date">
							<span class="day">30</span> <span class="month">Oct</span>
						</div>
						<div class="caption hometext">
							<h4>${cs.coursename }</h4>
							<p style="font-size: 15px; color: #7c7c86;">${cs.description }</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!--
	========================cảm nghĩ của học viên================
	-->
	<div class="container-fluid text-center khung3">
		<div class="khung2">
			<div id="myCarousel1" class="carousel slide text-center"
				data-ride="carousel">
				<!--Các dấu tròn tròn chuyển tiếp-->

				<!--nội dung các slide-->
				<div class="container lst">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<h4 style="color: #f7f7f7;">
								"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
								eget risus porta, tincidunt turpis at, interdum tortor.
								Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur
								adipiscing elit." <br>
								<span>Nguyễn A , Đại học SPKT tp HCM </span>
							</h4>
						</div>
						<div class="item">
							<h4 style="color: #f7f7f7;">
								"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
								eget risus porta, tincidunt turpis at, interdum tortor." <br>
								<span>Mỹ Linh </span>
							</h4>
						</div>
						<div class="item">
							<h4 style="color: #f7f7f7;">
								"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
								eget risus porta, tincidunt turpis at, interdum tortor."<br>
								<span>Mỹ Lê, sinh viên </span>
							</h4>
						</div>
					</div>
				</div>
				<div class="container">
					<ol class="carousel-indicators">
						<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel1" data-slide-to="1"></li>
						<li data-target="#myCarousel1" data-slide-to="2"></li>
					</ol>
				</div>
				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel1"
					data-slide="prev"> <span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel1"
					data-slide="next"> <span class="sr-only">Next</span>
				</a>
			</div>
			<!--end div cảm nghĩ-->
		</div>
	</div>
	<!--
	========================Tin tức nổi bật================
	-->
	<div class="container-fluid" id="bloghome">
		<div class="container khung" style="text-align: center;">
			<div class="gioithieu">
				<h2>Tin tức</h2>
				<p class="p_home">Những tin tức nổi bật</p>
			</div>
			<div class="row container">
				<c:forEach items="${news}" var="list_news" begin="0" end="3">
					<!--Rút gọn nội dung của tin tức  -->
					<c:set var="content"
						value="${fn:substring(list_news.content_news, 0, 50)}" />
					<!-- Tách ngày, tháng -->
					<c:set var="day" value="${fn:substring(list_news.date, 8, 10)}" />
					<c:set var="month" value="${fn:substring(list_news.date, 5, 7)}" />

					<div class="col-md-3 tintucHome">
						<div class="thumbnail entry">
							<a href="NewsInfo?news_id=${list_news.news_id}"
								class="non-textdecoration" target="_blank"> <img
								src="${list_news.image }" alt="Nature"
								style="width: 100%; height: 250px;">
							</a>
						</div>
						<div class="post-date">
							<span class="day">${day }</span> <span class="month">${month }</span>
						</div>
						<div class="caption hometext">
							<a href="News_Info?news_id=${list_news.news_id}"
								class="non-textdecoration" target="_blank">
								<h4>${list_news.title }</h4>
							</a>
						</div>
						<p style="font-size:15px; color: #7c7c86; padding-top:5px;float:right">
							${content }...</p>
						<a class="readmore" href="News_Info?news_id=${list_news.news_id }">read
							more <i class="fa fa-angle-right"></i>
						</a>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>


	<!--
	==========================Footer================
	-->
<jsp:include page="footer.jsp"/>	
<script src="js/myjsHome.js"></script>
</body>
</html>