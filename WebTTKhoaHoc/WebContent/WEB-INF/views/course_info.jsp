<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dainguyen.Model.Account" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Thông tin khóa học</title>
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
	<link rel="stylesheet" type="text/css" href="css/mycssKhoahoc_Info.css"/>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<script language="javascript" src="js/myjsHome.js"></script>
	<script>
		function validateCurrency(fee){
			var regex=^\$?(?!0.00)(([0-9]{1,3},([0-9]{3},)*)[0-9]{3}|[0-9]{1,3})(\.[0-9]{2})?$;
			return regex.test(fee);
		}
	</script>
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
    					<button class="btn btn_account dropdown-toggle" style="color:black;" type="button" data-toggle="dropdown">
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
						<a class="navbar-brand" href="trangchu.html">
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
							<li class="active dropdown">
								<a href="Course" class="dropdown-toggle" data-toggle="dropdown">KHÓA HỌC<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Course">Các khóa học</a></li>
									<li><a href="LichKhaiGiang">Lịch khai giảng</a></li>          
								</ul>
							</li>
							<li >
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
 	

	<div class="header-page">
		<div class="header-content">
			<div style="text-align: right;">
				<h1>Khóa học</h1>
			</div>			
		</div>
	</div>
	<!--
		==============================content===================================
	-->

	<div class="container" id="khoahoc_info">
		<div class="course_main">
			<div class="title_course col-md-12">
				<!-- <div class="post-date">
			  		<span class="day">30</span>
			  		<span class="month">Oct</span>
			  	</div> -->
			  	<%-- <c:forEach items="${course}" var="course"> --%>
			  	<div class="caption hometext">
			        <h2>${course.coursename } </h2>
			        <!-- <p style="font-size: 15px; color:#7c7c86;">Giảng viên: Khang Le</p> -->
			        <div class="entry-content">
			        	<div class="course_content">
			        		<div class="course_img pull-right">
			        			<div class="course_imggg">
			        				<img src="${course.courseimage }" alt="#" width="450" height="300" />
			        			</div>
			        		</div>
			        	</div>
			        	<div class="content_inf">
			        		<p>${course.description }</p>
			        		<p>${course.info }</p>
			        	</div>
			        </div>
			    </div>
			    <%-- </c:forEach> --%>
			    <div class="schedule">
			    	<div>
				    	<div class="title_sche">
				    		<h2> Lịch khai giảng</h2>
				    	</div>
				    	<div class="body">
				    		<table id="sche_table" class="table">
				    			<thead>
				    				<tr class="sche_header">
				    					<th><span>Lớp</span></th>
				    					<th><span>Thời gian</span></th>
				    					<th><span>Ngày khai giảng</span></th>
				    					<th><span>Địa điểm học</span></th>
				    					<th><span>Học phí</span></th>
				    					<th><span>Đăng kí</span></th>
				    				</tr>
				    			</thead>
				    			<tbody>
				    			
				    				<c:forEach items="${class_list}" var="list_class">
										<tr>
												<td>${list_class.classname}</td>
												<td>${list_class.timestudy}</td>
												<td>${list_class.startday}</td>
												<td>${list_class.location}</td>
												<td><fmt:formatNumber type="number" maxIntegerDigits="10" value="${course.fee}" /> VND</td>
												<td><a href="Register_Class?class_id=${list_class.class_id}&course_name=${course.coursename }&fee=${course.fee}"><i class="fa fa-edit" style="font-size:24px;color:black"></i></a></td>
										</tr>
												
									</c:forEach>
				    				
				    			</tbody>
				    		</table>
				    	</div>
			    	</div>
		    	</div>
		    </div>
		    
		</div>
	</div>
	
		<!--
	==========================Footer================
	-->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>