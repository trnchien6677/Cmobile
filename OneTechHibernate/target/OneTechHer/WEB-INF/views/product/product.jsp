<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
<head>
<title>Single Product</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="OneTech shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="../resources/styles/bootstrap4/bootstrap.min.css">
<link
	href="../resources/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="../resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="../resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="../resources/styles/product_styles.css">
<link rel="stylesheet" type="text/css"
	href="../resources/styles/product_responsive.css">
</head>

<body>


	<div class="super_container">

		<!-- Header -->
		<jsp:include page="../header.jsp"></jsp:include>

		<!-- Single Product -->

		<div class="single_product">
			<div class="container">
				<div class="row">

					<!-- Images -->
					<div class="col-lg-2 order-lg-1 order-2">
						<ul class="image_list">
							<li data-image="images/single_4.jpg"><img
								src="../resources/images/${product.getImage()}" alt=""></li>
							<li data-image="images/single_2.jpg"><img
								src="../resources/images/${product.getImage()}" alt=""></li>
							<li data-image="images/single_3.jpg"><img
								src="../resources/images/${product.getImage()}" alt=""></li>
						</ul>
					</div>

					<!-- Selected Image -->
					<div class="col-lg-5 order-lg-2 order-1">
						<div class="image_selected">
							<img src="../resources/images/${product.getImage()}" alt="">
						</div>
					</div>

					<!-- Description -->
					<div class="col-lg-5 order-3">
						<div class="product_description">
							<div class="product_category"></div>
							<div class="product_name">${product.getTitle() }</div>
							<div class="product_text">
								<h4>
									<p>${product.getDescription() }</p>
								</h4>
							</div>

							<div class="order_info d-flex flex-row">
								<form action="#">
									<div class="clearfix" style="z-index: 1000;">

										<!-- Product Quantity -->
										<div class="product_quantity clearfix">
											<span>Quantity: </span> <input id="quantity_input"
												type="text" pattern="[0-9]*" value="1">
											<div class="quantity_buttons">
												<div id="quantity_inc_button"
													class="quantity_inc quantity_control">
													<i class="fas fa-chevron-up"></i>
												</div>
												<div id="quantity_dec_button"
													class="quantity_dec quantity_control">
													<i class="fas fa-chevron-down"></i>
												</div>
											</div>
										</div>

										<!-- Product Color -->
										<ul class="product_color">
											<li><span>Color: </span>
												<div class="color_mark_container">
													<div id="selected_color" class="color_mark"></div>
												</div>
												<div class="color_dropdown_button">
													<i class="fas fa-chevron-down"></i>
												</div>

												<ul class="color_list">
													<li><div class="color_mark"
															style="background: #999999;"></div></li>
													<li><div class="color_mark"
															style="background: #b19c83;"></div></li>
													<li><div class="color_mark"
															style="background: #000000;"></div></li>
												</ul></li>
										</ul>

									</div>

									<div class="product_price">
										<fmt:formatNumber value="${product.getPrice() }" type="number"
											maxIntegerDigits="14" />
										vnd
									</div>
									<div class="button_container">
										<a
											href="http://localhost:8080/OneTechHibernate/AddCart/${product.getId()}"
											class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
										<div class="product_fav">
											<i class="fas fa-heart"></i>
										</div>
									</div>

								</form>
							</div>
						</div>
					</div>
					

				</div>
					
			</div>

		</div>




		<!-- Footer -->
		<jsp:include page="../footer.jsp"></jsp:include>



	</div>
	<Script>
 $(".add-to-cart").on("click", function() {
	var id = $(".add-to-cart").val();
	var quanty = $("#quantity-addcart").val();
	window.location = "${pageContext.request.contextPath}/AddCartMul/" + id + "/" + quanty;
});
 </Script>
	<script src="../resources/js/jquery-3.3.1.min.js"></script>
	<script src="../resources/styles/bootstrap4/popper.js"></script>
	<script src="../resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="../resources/plugins/greensock/TweenMax.min.js"></script>
	<script src="../resources/plugins/greensock/TimelineMax.min.js"></script>
	<script src="../resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script src="../resources/plugins/greensock/animation.gsap.min.js"></script>
	<script src="../resources/plugins/greensock/ScrollToPlugin.min.js"></script>
	<script src="../resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="../resources/plugins/easing/easing.js"></script>
	<script src="../resources/js/product_custom.js"></script>
	
</body>

</html>