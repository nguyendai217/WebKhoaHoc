<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dainguyen.Model.Account" %>
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
						    <a href="register">Đăng ký</a>
						</div>
					</li>
					<%} %>				
					<li class="sdt"><span class="glyphicon glyphicon-earphone"></span>(+84)98777777 </li>
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
							<li class="active"><a href="TrangChu">TRANG CHỦ</a></li>
							<li class="dropdown"><a href="Course"
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