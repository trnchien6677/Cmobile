<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>OneTech</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="OneTech shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/styles/bootstrap4/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath }/resources/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/plugins/slick-1.8.0/slick.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/styles/responsive.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/styles/product_styles.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/styles/product_responsive.css">



</head>


<body>


	<div class="super_container">

		<!-- Header -->
		<jsp:include page="../header.jsp"></jsp:include>
		
		<div class="container">
		<h1>${news.getTitle() }</h1>
		<div class="">
		${news.getDescrip() }
		</div>
		</div>

		<!-- Footer -->
		<jsp:include page="../footer.jsp"></jsp:include>



	</div>
	<Script>
		$(".add-to-cart")
				.on(
						"click",
						function() {
							var id = $(".add-to-cart").val();
							var quanty = $("#quantity-addcart").val();
							window.location = "${pageContext.request.contextPath}/AddCartMul/"
									+ id + "/" + quanty;
						});
	</Script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/styles/bootstrap4/popper.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/greensock/TweenMax.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/greensock/TimelineMax.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/greensock/animation.gsap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/greensock/ScrollToPlugin.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/slick-1.8.0/slick.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/plugins/easing/easing.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/custom.js"></script>



</body>

</html>