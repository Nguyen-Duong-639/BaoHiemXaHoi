
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
<%
session = request.getSession(false);
String login = request.getParameter("login");
String error = request.getParameter("error");
if(login==null)
	login = "1";

if(error==null)
	error = "0";

%>
<body>
	<div style="width: 100%">
		<div class="header row">
			<div class="col"></div>
			<div class="col" style="">
				<a href="./register.jsp"><button class="button">
						<h6>Đăng ký</h6>
					</button></a>
				<a href="./login.jsp"><button class="button">
						<h6>Đăng nhập</h6>
					</button></a>
			</div>
		</div>
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
		<div>
			<a style="color: black" href="/edu.sqa/index.jsp">Trang chủ</a> > <a
				href="/login.jsp">Đăng nhập</a>
		</div>
		<div class="row"
			style="background-color: #E8E9EA; border: 0; width: 100%; height: 40px">
			<div class="col" style="color: #000000; margin-left: 50px; margin-top: auto; margin-bottom: auto;">
				<label> ĐĂNG NHẬP </label>
			</div>
		</div>
		<br> &nbsp;
		<div style="text-align: center;">
			<form method="post" action="/edu.sqa/login">
				<%if(login.equals("0")){ %>
					<div class="row">
						<div class="col">
							<label style="text-align: center;font-style: oblique; color: red;"> Bạn phải đăng nhập để tiếp tục phiên làm việc. </label>
						</div>
					</div>
				<%}
				  if(error.equals("1")){%>
					<div class="row">
						<div class="col">
							<label style="text-align: center;font-style: oblique; color: red;"> Vui lòng kiểm tra lại tên đăng nhập hoặc mật khẩu. </label>
						</div>
					</div>
				<%}%>
				<div class="row">
					<div class="col">
						<label style="float: right;"> Tên đăng nhập </label>
					</div>
					<div class="col" style="">
						<input
							style="border-left: 0; border-right: 0; border-top: 0; text-align: center; float: left;"
							name="tenDangNhap" placeholder="Tên đăng nhập" type="text" required="required" autofocus="autofocus">
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
							name="matKhau " placeholder="Mật khẩu" type="password" required="required"> <br> &nbsp;
						<br> <input type="submit" name="submit" value="Đăng nhập"
							class="btnLogin"
							style="color: white; float: left; margin-left: 150px">
					</div>
				</div>
			</form>
		</div>
	</div>
	<div>
		<br> &nbsp; <br> &nbsp; <br> &nbsp; <%-- delete <br> &nbsp here if you have more element in tag div before here --%>
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
		<br> &nbsp; <br> &nbsp; <br> &nbsp;
	</div>
	<footer>
		<div class="row" style="background-color: #142b50; height: 50px">
			<div class="col" style=" text-align: center; margin: auto;">
				<label style="color: white; ">
					©2020-2021
				</label>
			</div>
			<div class="col" style=" text-align: center; margin: auto;">
				<label style="color: white;">
					NGUYỄN VIỆT ĐOÀN
				</label>
			</div>
		</div>
	</footer>
</body>
</html>