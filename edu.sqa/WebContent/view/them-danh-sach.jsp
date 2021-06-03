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
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
<script src='https://cdn.jsdelivr.net/gh/vietblogdao/js/districts.min.js'></script>
<style type="text/css">
.button, .btnLogin, .btnRegister {
	border: 0;
	background-color: #0780D3;
	text-align: center;
}

.button:hover {
	background-color: #209DF3;
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
.infolabel{
	font-size: medium;
	border-right: 1px solid #e8e9ea;
}
</style>
</head>
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
						Xin chào <strong> Test <%-- <%=khachHang.getTenKhachHang() %> --%></strong>
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
				<form method="post" action="">
					<div class="row" style="width: 100%">
						<div class="col" style="text-align: center;">
							<label>HỒ SƠ BẢO HIỂM Y TẾ</label>
						</div>
					</div>
					<br> &nbsp;
					<br>
					<div class="row" style="width: 100%">
						<div class="col-xs-7 col-sm-7 col-md-7 col-lg-7 infolabel">
							<label>Tên người bảo hiểm: </label>
							<input
								style="border-left: 0; border-right: 0; border-top: 0; text-align: center; width: 75%"
								name="tenNguoiBaoHiem" placeholder="Tên người bảo hiểm" type="text" required="required" autofocus="autofocus">
						</div>
						<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5 infolabel">
							<label>Giới tính: </label>
							<select name="gioiTinh" style="width: 75%">
								<option value="1" style="text-align: center;">Nam</option>
								<option value="0">Nữ </option>
							</select>
						</div>
					</div>
					<div class="row" style="width: 100%">
						<div class="col-xs-5 col-sm-5 col-md-5 col-lg-5 infolabel">
							<label>Ngày sinh: </label>
							<input
								style="border-left: 0; border-right: 0; border-top: 0; text-align: center; width: 75%"
								name="ngaySinh" placeholder="Ngày sinh" type="date" required="required">
						</div>
						<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 infolabel">
							<label>Quốc tịch: </label>
							<input
								style="border-left: 0; border-right: 0; border-top: 0; text-align: center; width: 75%"
								name="Quốc tịch" type="text" value="Việt Nam" readonly="readonly">
						</div>
						<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 infolabel">
							<label>Dân tộc: </label>
							<input
								style="border-left: 0; border-right: 0; border-top: 0; text-align: center; width: 75%"
								name="danToc" type="text" value="Kinh" readonly="readonly">
						</div>
					</div>
					<div class="row" style="width: 100%">
						<div class="col infolabel">
							<label>Địa chỉ thưởng trú: </label>
							<select name="calc_shipping_provinces">
							  	<option value="">Tỉnh / Thành phố</option>
							</select>
							<select name="calc_shipping_district">
							  	<option value="">Quận / Huyện</option>
							</select>
							<input class="billing_address_1" name="thanhPho" type="hidden" value="">
							<input class="billing_address_2" name="quanHuyen" type="hidden" value="">
						</div>
					</div>
					<div class="row" style="width: 100%">
						<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 infolabel">
							<label>Số điện thoại: </label>
							<input
								style="border-left: 0; border-right: 0; border-top: 0; text-align: center; width: 75%"
								name="soDienThoai" type="text" placeholder="Số điện thoại" required="required">
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 infolabel">
							<label>Email(nếu có): </label>
							<input
								style="border-left: 0; border-right: 0; border-top: 0; text-align: center; width: 75%"
								name="email" type="email" placeholder="Email">
						</div>
					</div>
					<div class="row" style="width: 100%">
						<div class="col">
							<input class="button" style="color: #ffffff; font-size: smaller;" type="submit" value="Thêm" >
						</div>
					</div>
				</form>
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

<script>//<![CDATA[
if (address_2 = localStorage.getItem('address_2_saved')) {
  $('select[name="calc_shipping_district"] option').each(function() {
    if ($(this).text() == address_2) {
      $(this).attr('selected', '')
    }
  })
  $('input.billing_address_2').attr('value', address_2)
}
if (district = localStorage.getItem('district')) {
  $('select[name="calc_shipping_district"]').html(district)
  $('select[name="calc_shipping_district"]').on('change', function() {
    var target = $(this).children('option:selected')
    target.attr('selected', '')
    $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
    address_2 = target.text()
    $('input.billing_address_2').attr('value', address_2)
    district = $('select[name="calc_shipping_district"]').html()
    localStorage.setItem('district', district)
    localStorage.setItem('address_2_saved', address_2)
  })
}
$('select[name="calc_shipping_provinces"]').each(function() {
  var $this = $(this),
    stc = ''
  c.forEach(function(i, e) {
    e += +1
    stc += '<option value=' + e + '>' + i + '</option>'
    $this.html('<option value="">Tỉnh / Thành phố</option>' + stc)
    if (address_1 = localStorage.getItem('address_1_saved')) {
      $('select[name="calc_shipping_provinces"] option').each(function() {
        if ($(this).text() == address_1) {
          $(this).attr('selected', '')
        }
      })
      $('input.billing_address_1').attr('value', address_1)
    }
    $this.on('change', function(i) {
      i = $this.children('option:selected').index() - 1
      var str = '',
        r = $this.val()
      if (r != '') {
        arr[i].forEach(function(el) {
          str += '<option value="' + el + '">' + el + '</option>'
          $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>' + str)
        })
        var address_1 = $this.children('option:selected').text()
        var district = $('select[name="calc_shipping_district"]').html()
        localStorage.setItem('address_1_saved', address_1)
        localStorage.setItem('district', district)
        $('select[name="calc_shipping_district"]').on('change', function() {
          var target = $(this).children('option:selected')
          target.attr('selected', '')
          $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
          var address_2 = target.text()
          $('input.billing_address_2').attr('value', address_2)
          district = $('select[name="calc_shipping_district"]').html()
          localStorage.setItem('district', district)
          localStorage.setItem('address_2_saved', address_2)
        })
      } else {
        $('select[name="calc_shipping_district"]').html('<option value="">Quận / Huyện</option>')
        district = $('select[name="calc_shipping_district"]').html()
        localStorage.setItem('district', district)
        localStorage.removeItem('address_1_saved', address_1)
      }
    })
  })
})
//]]></script>
</html>