<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="deals_featured">
		<div class="container">
			<div class="row">
				<div
					class="col d-flex flex-lg-row flex-column align-items-center justify-content-start">

					<!-- Deals -->

					<div class="deals">
						<div class="deals_title">Săn sản phẩm giá rẻ</div>
						<div class="deals_slider_container">

							<!-- Deals Slider -->
							<div class="owl-carousel owl-theme deals_slider">

								<!-- Deals Item -->
								<c:forEach var="product" items="${listProductBrand}">
									<div class="owl-item deals_item">
										<div class="deals_image">
											<img src="resources/images/${product.image}" alt="">
										</div>
										<div class="deals_content">
											<div
												class="deals_info_line d-flex flex-row justify-content-start">
												<div class="deals_item_category">
													<a href="#">Giảm giá</a>
												</div>
												<div class="deals_item_price_a ml-auto">
													<fmt:formatNumber value="${product.price }" type="number"
														maxIntegerDigits="14" />
												</div>
											</div>
											<div
												class="deals_info_line d-flex flex-row justify-content-start">
												<div class="deals_item_name">${product.title }</div>
												<div class="deals_item_price ml-auto">
													<fmt:formatNumber value="${product.price_net }"
														type="number" maxIntegerDigits="14" />
												</div>
											</div>
											<div class="available">
												<div
													class="available_line d-flex flex-row justify-content-start">
													<div class="available_title">
														Có sẵn: <span>${product.available }</span>
													</div>
													<div class="sold_title ml-auto">
														Còn lại: <span>${product.sold }</span>
													</div>
												</div>
												<div class="available_bar">
													<span style="width: 17%"></span>
												</div>
											</div>
											<div
												class="deals_timer d-flex flex-row align-items-center justify-content-start">
												<div class="deals_timer_title_container">
													<div class="deals_timer_title">Hurry Up</div>
													<div class="deals_timer_subtitle">Offer ends in:</div>
												</div>
												<div class="deals_timer_content ml-auto">
													<div class="deals_timer_box clearfix" data-target-time="">
														<div class="deals_timer_unit">
															<div id="deals_timer1_hr" class="deals_timer_hr"></div>
															<span>hours</span>
														</div>
														<div class="deals_timer_unit">
															<div id="deals_timer1_min" class="deals_timer_min"></div>
															<span>mins</span>
														</div>
														<div class="deals_timer_unit">
															<div id="deals_timer1_sec" class="deals_timer_sec"></div>
															<span>secs</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>


							</div>

						</div>

						<div class="deals_slider_nav_container">
							<div class="deals_slider_prev deals_slider_nav">
								<i class="fas fa-chevron-left ml-auto"></i>
							</div>
							<div class="deals_slider_next deals_slider_nav">
								<i class="fas fa-chevron-right ml-auto"></i>
							</div>
						</div>
					</div>

					<!-- Featured -->
					<div class="featured">
						<div class="tabbed_container">
							<div class="tabs">
								<ul class="clearfix">
									<li class="active">Đặc biệt</li>
									<li>Giảm giá</li>
									<li>Chạy nhất</li>
								</ul>
								<div class="tabs_line">
									<span></span>
								</div>
							</div>

							<!-- Product Panel -->
							<div class="product_panel panel active">
								<div class="featured_slider slider">

									<!-- Slider Item -->
									<c:forEach var="product" items="${listProduct}">
										<div class="featured_slider_item">
											<div class="border_active"></div>
											<div
												class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
												<div
													class="product_image d-flex flex-column align-items-center justify-content-center">
													<img src="resources/images/${product.image}" alt="">
												</div>
												<div class="product_content">
													<div class="product_price discount">
														<fmt:formatNumber value="${product.price}" type="number"
															maxIntegerDigits="14" />
														<span><fmt:formatNumber
																value="${product.price_net}" type="number"
																maxIntegerDigits="14" /></span>
													</div>
													<div class="product_name">
														<div>
															<a href="chi-tiet-san-pham/${product.getId()}">${product.title}</a>
														</div>
													</div>
													<div class="product_extras">
														<div class="product_color">
															<input type="radio" checked name="product_color"
																style="background: #b19c83"> <input type="radio"
																name="product_color" style="background: #000000">
															<input type="radio" name="product_color"
																style="background: #999999">
														</div>
														<a href="AddCart/${product.getId()}"
															class="btn btn-default add-to-cart" type="button"><i
															class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
													</div>
												</div>
												<div class="product_fav">
													<i class="fas fa-heart"></i>
												</div>
												<ul class="product_marks">
													<li class="product_mark product_discount">-25%</li>
													<li class="product_mark product_new">new</li>
												</ul>
											</div>
										</div>
									</c:forEach>

								</div>
								<div class="featured_slider_dots_cover"></div>
							</div>

							<!-- Product Panel -->

							<div class="product_panel panel">
								<div class="featured_slider slider">

									<c:forEach var="product" items="${listProduct}">
										<div class="featured_slider_item">
											<div class="border_active"></div>
											<div
												class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
												<div
													class="product_image d-flex flex-column align-items-center justify-content-center">
													<img src="resources/images/${product.image}" alt="">
												</div>
												<div class="product_content">
													<div class="product_price discount">
														<fmt:formatNumber value="${product.price}" type="number"
															maxIntegerDigits="14" />
														<span><fmt:formatNumber
																value="${product.price_net}" type="number"
																maxIntegerDigits="14" /></span>
													</div>
													<div class="product_name">
														<div>
															<a href="${product.getId()}">${product.title}</a>
														</div>
													</div>
													<div class="product_extras">
														<div class="product_color">
															<input type="radio" checked name="product_color"
																style="background: #b19c83"> <input type="radio"
																name="product_color" style="background: #000000">
															<input type="radio" name="product_color"
																style="background: #999999">
														</div>
														<button class="product_cart_button">Add to Cart</button>
													</div>
												</div>
												<div class="product_fav">
													<i class="fas fa-heart"></i>
												</div>
												<ul class="product_marks">
													<li class="product_mark product_discount">-25%</li>
													<li class="product_mark product_new">new</li>
												</ul>
											</div>
										</div>
									</c:forEach>
								</div>
								<div class="featured_slider_dots_cover"></div>
							</div>

							<!-- Product Panel -->

							<div class="product_panel panel">
								<div class="featured_slider slider">

									<c:forEach var="product" items="${listProduct}">
										<div class="featured_slider_item">
											<div class="border_active"></div>
											<div
												class="product_item discount d-flex flex-column align-items-center justify-content-center text-center">
												<div
													class="product_image d-flex flex-column align-items-center justify-content-center">
													<img src="resources/images/${product.image}" alt="">
												</div>
												<div class="product_content">
													<div class="product_price discount">
														<fmt:formatNumber value="${product.price}" type="number"
															maxIntegerDigits="14" />
														<span><fmt:formatNumber
																value="${product.price_net}" type="number"
																maxIntegerDigits="14" /></span>
													</div>
													<div class="product_name">
														<div>
															<a href="${product.getId()}">${product.title}</a>
														</div>
													</div>
													<div class="product_extras">
														<div class="product_color">
															<input type="radio" checked name="product_color"
																style="background: #b19c83"> <input type="radio"
																name="product_color" style="background: #000000">
															<input type="radio" name="product_color"
																style="background: #999999">
														</div>
														<button class="product_cart_button">Add to Cart</button>
													</div>
												</div>
												<div class="product_fav">
													<i class="fas fa-heart"></i>
												</div>
												<ul class="product_marks">
													<li class="product_mark product_discount">-25%</li>
													<li class="product_mark product_new">new</li>
												</ul>
											</div>
										</div>
									</c:forEach>
								</div>
								<div class="featured_slider_dots_cover"></div>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>