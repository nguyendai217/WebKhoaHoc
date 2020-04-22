<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dainguyen.Model.Account" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Liên hệ</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--bootstrap & Jquery-->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!--Icon fa-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!--CSS-->
	<link rel="stylesheet" type="text/css" href="css/mycssLienhe.css"/>
	<link rel="stylesheet" type="text/css" href="css/mycssHome.css"/>
	
	<link rel="stylesheet" type="text/css" href="css/mycssHomeUser.css"/>
	<script language="javascript" src="js/myjsLienhe.js"></script>
	<script language="javascript" src="js/myjsHome.js"></script>
	<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	
</head>
<body>
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
							<li class=" dropdown">
								<a href="Course" class="dropdown-toggle" data-toggle="dropdown">KHÓA HỌC<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Course">Các khóa học</a></li>
									<li><a href="LichKhaiGiang">Lịch khai giảng</a></li>          
								</ul>
							</li>
							<li>
								<a href="News">TIN TỨC</a>
								
							</li> 
							<li class="active"><a href="Contact">LIÊN HỆ</a></li>
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
			<h1 style="text-align: right; padding-right: 0px; color: black;">Liên hệ</h1>		
		</div>
	</div>
<!--======================form dien thong tin-->
  	
  	<div class="container">
	  	<div id="wrapper">
	  		<div class="row">
				<form action="XuLySendMail" method ="Post">
				
					<h2 style="color: black; text-align: left; width: 1000px;">Send Us a Message</h2>
					<p class="tieude3">Liên hệ chúng tôi để chúng tôi giúp bạn dễ dàng hơn</p>
					<div class="responsive">
						<input type="text" id="name" name="name" class="textInput" placeholder="Your Name" style="padding-left: 10px" required><br/>
						<div class="val_error" id="name_error"></div>
					</div>
					<div style="padding-top: 8px;" class="responsive">
						<input type="text" id="email" name="email" class="textInput" placeholder="Your Email" style="padding-left: 10px" required><br/>
						<div class="val_error" id="email_error"></div>
					</div>
					<div style="padding-top: 8px;" class="responsive">
						<input type="text" id="topic" name="topic" class="textInput" placeholder="Topic" style="padding-left: 10px" required><br/>
						<div class="val_error" id="topic_error"></div>
					</div>
					<div style="padding-top: 14px" class="responsive">
						<textarea name="message" id="message" placeholder="Message"></textarea>
						<div class="val_error" id="message_error"></div>
					</div>
					<div>
						<button id="btnSendMessage" style="color:white; font-size:19px; background-color: #d20505" class="btn">Send Message</button>
						<input type="password" id="PassMail" name="passEmail" placeholder="Hãy nhập Password của Email" style="display:none;" />
						<button type="submit" id="Send" style="color:white; font-size:19px; background-color: #d20505;display:none;" class="btn" >SEND</button>
					</div>
					<h4 style="padding-top: 12px" id="ph" hidden> ĐÃ GỬI PHẢN HỒI THÀNH CÔNG!</h4>
				</form>
			</div>
		</div>
		
	</div>
	<!--===============GOOGLE MAP==================-->
	<div class="col-ms-12"> 
	  	<div id="map" style="width:100%;height:400px;">
	  		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.764713661627!2d105.76640251440622!3d20.961961895432385!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313452d99c1abbf5%3A0xd1f53441cd47e787!2zUGjhu5EgVsSDbiBQaMO6LCBIw6AgxJDDtG5nLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1586855765075!5m2!1svi!2s" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
	  	</div>
	</div>
	<!--
	==========================Footer================
	-->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>

