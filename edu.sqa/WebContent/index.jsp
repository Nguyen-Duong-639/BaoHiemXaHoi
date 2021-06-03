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
.button, .btnLogin, btn.Register {
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
	<div>
		<div class="header row">
			<div class="col"></div>
			<div class="col" style="">
				<a href="./view/register.jsp"><button class="button">
						<h6>Đăng ký</h6></button></a> 
				<a href="./view/login.jsp"><button class="button">
						<h6>Đăng nhập</h6></button></a>
			</div>
		</div>
		
	</div>
</body>
</html>