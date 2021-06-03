<%@page import="sqa.model.HopDong"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sqa.control.Proceduce"%>
<%@page import="sqa.model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cổng thông tin bảo hiểm xã hội</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style type="text/css">
.button, .btnLogin, .btnRegister {
	border: 0;
	background-color: #0780D3;
	text-align: center;
}

.button:hover {
	background-color: #209DF3
}

.button {
	float: right;
}

h6 {
	color: white;
}

.header {
	background-image: url("/edu.sqa//frag/banner.jpg");
	background-size: 100%;
	height: 80px;
	width: 100%;
}

.sidenav {
	height: 100%;
	width: 200px;
	position: fixed;
	z-index: 1;
	left: 0;
	background-color: #ffffff;
	overflow-x: hidden;
	padding-top: 20px;
	border-right: 1px solid #e8e9ea;
}

.sidenav a {
	padding: 6px 8px 6px 16px;
	text-decoration: none;
	/* font-size: 25px; */
	color: ##585858;
	display: block;
}
.vertical{
	
	height: 100%;
}
.sidenav a:hover {
	color: #6c757d;
}

.main {
	margin-left: 200px; /* Same as the width of the sidenav */
	font-size: 28px; /* Increased text to enable scrolling */
	padding: 0px 10px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

.fix {
	position: fixed;
}
.headtable{
    background-color: #0780d3;
    color: #ffffff;
    text-align: center;
	font-size: medium;
}
.celltable{
	text-align: center;
	font-size: medium;
	border-right: 1px solid #e8e9ea;
}
</style>
</head>
<%
	session = request.getSession(false);
	KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
	if(khachHang==null) khachHang = new KhachHang();
	if(khachHang.getTenDangNhap() == null){
		response.sendRedirect("/edu.sqa/view/login.jsp?login=0");
	}else{
		Proceduce proceduce = new Proceduce();
		String loaiHopDong = request.getParameter("loaiHopDong");
		ArrayList<HopDong> danhSachHopDong = proceduce.getDanhSachHopDong(khachHang.getTenDangNhap(), Integer.parseInt(loaiHopDong));
		session.setAttribute("danhSachHopDong", danhSachHopDong);
%>
<body>
	<div style="width: 100%">
		<div
			style="display: block; position: fixed; top: 0; width: 100%; z-index: 2;">
			<div class="header row">
				<div class="col"></div>
				<div class="col" style="">
					<a href="/edu.sqa/index.jsp">
						<button class="button">
							<h6>Đăng xuất</h6>
						</button>
					</a>
					<label style="color: #ffffff; float: right;">
						Xin chào <strong> <%=khachHang.getTenKhachHang() %></strong>
					</label>
				</div>
			</div>
			<div style="background-color: white;">
				<br> &nbsp; <br> &nbsp; 
			</div>
			<div style="background-color: white;">
				<a style="color: black" href="/edu.sqa/index.jsp">Trang chủ</a> &gt; 
				<a href="#">Danh sách hồ sơ</a>
			</div>
			<div class="row"
				style="background-color: #E8E9EA; border: 0; width: 100%; height: 40px">
				<div class="col"
					style="color: #000000; margin-left: 50px; margin-top: auto; margin-bottom: auto;">
					<label> DANH SÁCH HỒ SƠ </label>
				</div>
			</div>
			
		</div>
		<div style="margin-top: 215px;">
			<div class="sidenav">
				<div class="dropdown">
					<button style="border: 0; width: 100%; background-color: #0780D3; color: #fff" type="button" class="dropdown-toggle" data-toggle="dropdown">Danh sách hồ sơ</button>
					<div class="dropdown-menu" style="width: 100%">
						<a class="dropdown-item" href="./danh-sach-hop-dong.jsp?loaiHopDong=1">Hồ sơ cá nhân</a> 
						<a class="dropdown-item" href="./danh-sach-hop-dong.jsp?loaiHopDong=2">Hồ sơ hộ gia đình</a> 
					</div>
				</div>
			</div>
			<div class="main">
				<div class="row" style="width: 100%">
				    <div class="col">
				    	<a href="#"><button class="button" onclick="notActive()"><h6> Đăng ký bảo hiểm y tế.</h6></button></a>
				    </div>
				</div>
				<div class="row" style="width: 100%">
					<div class="col infolabel" style="text-align: center;">
						<a href="./them-ho-so.jsp"><button class="button"><h6>Thêm hồ sơ</h6></button></a>
					</div>
				</div>
				<div class="row" style="width: 100%">
					<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 headtable">
						<label>STT</label>
					</div>
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 headtable">
						<label>Mã hồ sơ</label>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 headtable">
						<label>Loại hồ sơ</label>
					</div>
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 headtable">
						<label>Trạng thái</label>
					</div>
					<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 headtable">
					</div>
				</div>
				<div class="row" style="width: 100%">
				<%if(danhSachHopDong.size()>0){
					for(HopDong temp : danhSachHopDong){ %>
						<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 celltable">
							<label><%= temp.getId() %></label>
						</div>
						<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 celltable">
							<label><%=temp.getMaHopDong() %></label>
						</div>
						<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 celltable">
							<label><%=temp.getLoaiHopDong() %></label>
						</div>
						<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 celltable">
							<label><%=temp.getTrangThai() %></label>
						</div>
						<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 celltable" >
							<a href="./chi-tiet-hop-dong.jsp?id=<%= temp.getId() %>"><button class="btnLogin" style="color: #ffffff; vertical-align: middle;">Chi tiết</button></a>
						</div>
				<%}}else{%>
					<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 celltable">
						<label style="text-align: center;font-style: oblique; color: red;">Bạn không có hồ sơ nào trong mục này.</label>
					</div>
				<%} %>
				</div>
			</div>
		</div>
	</div>
	<div>
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
		<%-- delete <br> &nbsp here if you have more element in tag div before here --%>
		<br> &nbsp; <br> &nbsp; <br> &nbsp; <br> &nbsp; <br>
		&nbsp; <br> &nbsp; <br> &nbsp; <br> &nbsp; <br>
		&nbsp; <br> &nbsp; <br> &nbsp; <br> &nbsp; <br>
		&nbsp; <br> &nbsp; <br> &nbsp; <br> &nbsp; <br>
		&nbsp; <br> &nbsp; <br> &nbsp; <br> &nbsp; <br>
		&nbsp; <br> &nbsp; <br> &nbsp; <br> &nbsp; <br>
		&nbsp; <br> &nbsp; <br> &nbsp;
	</div>
	<footer>
		<div class="row"
			style="background-color: #142b50; height: 50px; z-index: 2; position: relative;">
			<div class="col" style="text-align: center; margin: auto;">
				<label style="color: white;"> ©2020-2021 </label>
			</div>
			<div class="col" style="text-align: center; margin: auto;">
				<label style="color: white;"> NGUYỄN VIỆT ĐOÀN </label>
			</div>
		</div>
	</footer>
</body>
<%} %>
<script type="text/javascript">
function notActive(){
	alert("Chức năng này đang xây dựng");
}
</script>
</html>