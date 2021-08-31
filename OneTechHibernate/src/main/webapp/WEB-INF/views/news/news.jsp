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

		<!-- Body -->
		<div class="deals_featured">
			<div class="container">
				<div class="row">
					<div>
						<h1>Tin tức nóng về thế giới công nghệ</h1>
							<hr class="sidebar-divider">
							<br></br>
						<c:forEach var="news" items="${listNews}">
							<div class="row">
								<div class="td-module-thumb">
									<div
										class="product_image d-flex flex-column align-items-center justify-content-center">
										<img width="218" height="150"
											src="resources/images/${news.image}" alt="">
									</div>
								</div>
								<div class="item-details">
									<h3 class="entry-title td-module-title">
										<a href="chi-tiet-bai-viet/${news.getId()}" rel="bookmark"
											title="Cậu út nhà Kiwi Ngô Mai Trang bụ bẫm tròn 1 tuổi">${news.title }</a>
									</h3>
									<div class="td-module-meta-info">
										<span class="td-post-date"><time
												class="entry-date updated td-module-date"
												datetime="2016-08-17T03:30:10+00:00">17 Tháng Tám,
												2016</time></span>
										<div class="td-module-comments"></div>
									</div>

									<h5><div class="td-excerpt">${news.demo }</div></h5>
								</div>
								<hr class="sidebar-divider">

							</div>
							<hr class="sidebar-divider">
						</c:forEach>
					</div>
					<div></div>
				</div>
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