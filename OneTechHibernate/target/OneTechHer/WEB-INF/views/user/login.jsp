<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

<title>Existing Login Form a Flat Responsive Widget Template ::
	W3layouts</title>

<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords"
	content="Existing Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Meta-Tags -->

<link href="resources/css/popuo-box.css" rel="stylesheet"
	type="text/css" media="all" />

<!-- Style -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css"
	media="all">

<!-- Fonts -->
<link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700"
	rel="stylesheet">
<!-- //Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1>ĐĂNG NHẬP NHẬN ƯU ĐÃI</h1>

	<div class="w3layoutscontaineragileits">
		<h2>Đăng nhập tại đây</h2>
		<form action="#" method="post">
			<input type="email" Name="Username" placeholder="EMAIL" required="">
			<input type="password" Name="Password" placeholder="PASSWORD"
				required="">
			<ul class="agileinfotickwthree">
				<li><input type="checkbox" id="brand1" value=""> <label
					for="brand1"><span></span>Remember me</label> <a href="#">Forgot
						password?</a></li>
			</ul>
			<div class="aitssendbuttonw3ls">
				<input type="submit" value="LOGIN">

				<div class="clear"></div>
			</div>
			<br></br>
			<div class="">
				<a href="/OneTechHibernate">Trang chủ</a>

				<div class=""></div>
			</div>
		</form>
	</div>

	<!-- for register popup -->
	<div id="small-dialog1" class="mfp-hide">
		<div class="contact-form1">
			<div class="contact-w3-agileits">
				<h3>Register Form</h3>
				<form action="#" method="post">
					<div class="form-sub-w3ls">
						<input placeholder="User Name" type="text" required="">
						<div class="icon-agile">
							<i class="fa fa-user" aria-hidden="true"></i>
						</div>
					</div>
					<div class="form-sub-w3ls">
						<input placeholder="Email" class="mail" type="email" required="">
						<div class="icon-agile">
							<i class="fa fa-envelope-o" aria-hidden="true"></i>
						</div>
					</div>
					<div class="form-sub-w3ls">
						<input placeholder="Password" type="password" required="">
						<div class="icon-agile">
							<i class="fa fa-unlock-alt" aria-hidden="true"></i>
						</div>
					</div>
					<div class="form-sub-w3ls">
						<input placeholder="Confirm Password" type="password" required="">
						<div class="icon-agile">
							<i class="fa fa-unlock-alt" aria-hidden="true"></i>
						</div>
					</div>
					<div class="login-check">
						<label class="checkbox"><input type="checkbox"
							name="checkbox" checked="">I Accept Terms & Conditions</label>
					</div>
					<div class="submit-w3l">
						<input type="submit" value="Register">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- //for register popup -->

	<div class="w3footeragile">
		<p>
			&copy; 2017 Existing Login Form. All Rights Reserved | Design by <a
				href="http://w3layouts.com" target="_blank">W3layouts</a>
		</p>
	</div>


	<script type="text/javascript" src="resources/js/jquery-2.1.4.min.js"></script>

	<!-- pop-up-box-js-file -->
	<script src="resources/js/jquery.magnific-popup.js"
		type="text/javascript"></script>
	<!--//pop-up-box-js-file -->
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>

</body>
<!-- //Body -->

</html>