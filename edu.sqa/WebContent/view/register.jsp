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
</style>
</head>
<body>
	<div style="width: 100%; height: 100%">
		<div class="header row">
			<div class="col"></div>
			<div class="col" style="">
				<a href="/view/register.jsp"><button class="button">
						<h6>Đăng ký</h6>
					</button></a> <a href="./login.jsp"><button class="button">
						<h6>Đăng nhập</h6>
					</button></a>
			</div>
		</div>
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
		<div>
			<a style="color: black" href="/edu.sqa/index.jsp">Trang chủ</a> > <a
				href="/view/register.jsp">Đăng ký</a>
		</div>
		<div class="row"
			style="background-color: #E8E9EA; border: 0; width: 100%; height: 40px">
			<div class="col"
				style="color: #000000; margin-left: 50px; margin-top: auto; margin-bottom: auto;">
				<label> ĐĂNG KÝ </label>
			</div>
		</div>
	</div>
	<div style="text-align: center;">
		<form method="post" action="/edu.sqa/register"
			enctype="multipart/form-data">
			<div class="row">
				<div class="col">
					<label style="float: right;"> Tên khách hàng </label>
				</div>
				<div class="col" style="">
					<input
						style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
						name="tenKhachHang" placeholder="Tên Khách Hàng" type="text"
						required="required" autofocus="autofocus"> <label
						style="color: red; float: left;"> * </label>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<label style="float: right;"> Ngày sinh </label>
				</div>
				<div class="col" style="">
					<input
						style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
						name="ngaySinh" type="date" required="required">
					<!-- <label style="color: red; float: left;"> * </label> -->
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<label style="float: right;"> Email </label>
				</div>
				<div class="col" style="">
					<input
						style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
						name="email" placeholder="Email" type="email" required="required">
					<label style="color: red; float: left;"> * </label>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<label style="float: right;"> Địa chỉ </label>
				</div>
				<div class="col" style="">
					<input
						style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
						name="diaChi" placeholder="Địa chỉ" type="text"
						required="required"> <label
						style="color: red; float: left;"> * </label>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<label style="float: right;"> Ảnh CMND/Hộ chiếu </label>
				</div>
				<div class="col" style="">
					<input
						style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
						name="cmnd" type="file" accept="image/*" required="required">
					<label style="color: red; float: left;"> * </label>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<label style="float: right;"> Số điện thoại </label>
				</div>
				<div class="col" style="">
					<input
						style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
						name="soDienThoai" placeholder="Số điện thoại" type="number"
						required="required"> <label
						style="color: red; float: left;"> * </label>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<label style="float: right;"> Giới tính </label>
				</div>
				<div class="col" style="">
					<input
						style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
						name="gender" value="male" type="radio" checked="checked">
					<label style="float: left;"> Nam </label> <input
						style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
						name="gender" value="female" type="radio"> <label
						style="float: left;"> Nữ </label>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<label style="float: right;"> Tên đăng nhập </label>
				</div>
				<div class="col" style="">
					<input
						style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
						name="tenDangNhap" placeholder="Tên đăng nhập" required="required">
					<label style="color: red; float: left;"> * </label>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<label style="float: right;"> Mật khẩu </label>
				</div>
				<div class="col">
					<input
						style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
						name="matKhau" placeholder="Mật khẩu" type="password"
						required="required"> <label
						style="color: red; float: left;"> * </label>
					</div>
			</div>
			<br>
			<div class="row">
				<div class="col">
					<label style="float: right;"> Xác nhận mật khẩu </label>
				</div>
				<div class="col">
					<input
						style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
						name="" placeholder="Xác nhận mật khẩu" type="password"
						required="required"> <label
						style="color: red; float: left;"> * </label> <br> &nbsp; <br>
					<input type="submit" name="submit" value="Đăng ký" class="btnLogin"
						style="color: white; float: left; margin-left: 150px">
				</div>
			</div>
		</form>
		<div>
			<br> &nbsp; <br> &nbsp; <br> &nbsp;<%-- delete <br> &nbsp here if you have more element in tag div before here --%>
			<br> &nbsp; <br> &nbsp; <br> &nbsp; 
			<br> &nbsp; <br> &nbsp; <br> &nbsp; 
			<br> &nbsp; <br> &nbsp; <br> &nbsp; 
			<br> &nbsp; <br> &nbsp; <br> &nbsp; 

		</div>
		<footer>
			<div class="row" style="background-color: #142b50; height: 50px">
				<div class="col" style="text-align: center; margin: auto;">
					<label style="color: white;"> ©2020-2021 </label>
				</div>
				<div class="col" style="text-align: center; margin: auto;">
					<label style="color: white;"> NGUYỄN VIỆT ĐOÀN </label>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>