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
	href="resources/styles/bootstrap4/bootstrap.min.css">
<link
	href="resources/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css"
	href="resources/plugins/slick-1.8.0/slick.css">
<link rel="stylesheet" type="text/css"
	href="resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="resources/styles/responsive.css">

</head>

<body>

	<div class="super_container">

		<!-- Header -->
		<jsp:include page="../header.jsp"></jsp:include>
		<!-- Cart -->
<div class="container">
		<h3>Danh sách sản phẩm đã mua:</h3>
		<table class="table table-bordered table-condensed">
			<thead>
				<tr>
					<th>Hình ảnh</th>
					<th>Mô tả</th>

					<th>Giá bán</th>
					<th>Số lượng</th>
					<th>Chỉnh sửa</th>
					<th>Xóa</th>
					<th>Tổng tiền</th>
				</tr>
			</thead>
			<tbody>


				<c:forEach var="item" items="${ Cart }">
					<tr>
						<td><img width="100"
							src="<c:url value="resources/images/${ item.value.product.image }"/>"
							alt=""></td>
						<td>${ item.value.product.title }</td>

						<td><fmt:formatNumber type="number" groupingUsed="true"
								value="${ item.value.product.price }" /> ₫</td>
						<td><input type="number" min="0" max="10" class=""
							style="max-width: 34px" placeholder="1"
							id="quanty-cart-${item.key }" size="16" type="text"
							value="${ item.value.quanty }"></td>
						<td>
							<button data-id="${item.key }" class="btn btn-mini edit-cart"
								type="button">Edit</button>
						</td>
						<td><a href="<c:url value="/DeleteCart/${item.key }"/>"
							class="btn btn-mini btn-danger" type="button">Delete </a></td>
						<td><fmt:formatNumber type="number" groupingUsed="true"
								value="${ item.value.totalPrice }" /> ₫</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<br />
		<h4>
			Tổng giỏ hàng:
			<fmt:formatNumber value="${ TotalPriceCart }" type="number"
				maxIntegerDigits="14" />
			vnd
		</h4>


		<a href="products.html" class="shopBtn btn-large"
			class="btn btn-default add-to-cart" type="button"><span
			class="icon-arrow-left"></span> Tiếp tục mua sắm </a> <a
			href="login.html" class="shopBtn btn-large pull-right"
			class="btn btn-default add-to-cart" type="button">Thanh toán <span
			class="icon-arrow-right"></span></a>
</div>
	</div>

	<!-- Footer -->
	<jsp:include page="../footer.jsp"></jsp:include>

	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/styles/bootstrap4/popper.js"></script>
	<script src="resources/styles/bootstrap4/bootstrap.min.js"></script>
	<script src="resources/plugins/greensock/TweenMax.min.js"></script>
	<script src="resources/plugins/greensock/TimelineMax.min.js"></script>
	<script src="resources/plugins/scrollmagic/ScrollMagic.min.js"></script>
	<script src="resources/plugins/greensock/animation.gsap.min.js"></script>
	<script src="resources/plugins/greensock/ScrollToPlugin.min.js"></script>
	<script src="resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="resources/plugins/slick-1.8.0/slick.js"></script>
	<script src="resources/plugins/easing/easing.js"></script>
	<script src="resources/js/custom.js"></script>
	<script>
		$(".edit-cart").on("click", function() {
			var id = $(this).data("id");
			var quanty = $("#quanty-cart-" + id).val();
			 if(confirm("Xác nhận thay đổi") == true){
				 window.location = "EditCart/" + id + "/" + quanty;
	            }else{
	            	window.location ="";
	            }
			
		});
</script>

</body>

</html>