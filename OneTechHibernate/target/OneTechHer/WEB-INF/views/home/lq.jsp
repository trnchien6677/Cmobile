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
	<div class="new_arrivals">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="tabbed_container">
						<div class="tabs clearfix tabs-right">
							<div class="new_arrivals_title">Sản phẩm bán chạy</div>
							<ul class="clearfix">
								<li class="active">Đặc biệt</li>

							</ul>
							<div class="tabs_line">
								<span></span>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12" style="z-index: 1;">

								<!-- Product Panel -->
								<div class="product_panel panel active">
									<div class="arrivals_slider slider">


										<!-- Slider Item -->
										<c:if test="${not empty listProduct}">
											<c:forEach var="product" items="${listProduct}">
												<div class="arrivals_slider_item">
													<div class="border_active"></div>
													<div
														class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
														<div
															class="product_image d-flex flex-column align-items-center justify-content-center">
															<img src="resources/images/${product.image}" alt="">
														</div>
														<div class="product_content">
															<div class="product_price">
																<fmt:formatNumber value="${product.price}"
																	type="number" maxIntegerDigits="14" />
															</div>
															<div class="product_name">
																<div>
																	<a href="prodcut">${product.title}</a>
																</div>
															</div>
															<div class="product_extras">
																<div class="product_color">
																	<input type="radio" checked name="product_color"
																		style="background: #b19c83"> <input
																		type="radio" name="product_color"
																		style="background: #000000"> <input
																		type="radio" name="product_color"
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
										</c:if>



									</div>
								</div>


							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

