
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>






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
		<div class="deals_featured">
			<div class=container>
				<div class="row">
					<h2>Product List</h2>
					<table border="5" width="70%" cellpadding="2">
						<tr>
							<th>Image</th>
							<th>Name</th>
							<th>Price</th>
							<th>Id</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
						<c:forEach var="emp" items="${list}">
							<tr>
								<td><div
										class="product_image d-flex flex-column align-items-center justify-content-center">
										<img src="resources/images/${emp.image}" alt="">
									</div></td>
								<td>${emp.name}</td>
								<td>${emp.price}</td>
								<td>${emp.id}</td>
								<td><a href="editemp/${emp.id}">Edit</a></td>
								<td><a href="deleteemp/${emp.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
					<br></br> <br /> <a href="addemp">Add New Category</a>
					<div><a href="tables">Table</a></div>
				</div>
			</div>
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

</body>

</html>