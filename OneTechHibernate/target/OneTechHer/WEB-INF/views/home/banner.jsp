<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="banner">
		<div class="banner_background"
			style="background-image: url(images/banner_background.jpg)"></div>
		<div class="container fill_height">
			<c:forEach var="banner" items="${listBannerDeal}">
				<div class="row fill_height">
					<div class="banner_product_image">
						<img src="resources/images/${banner.image}" alt="">
					</div>
					<div class="col-lg-5 offset-lg-4 fill_height">
						<div class="banner_content">

							<h1 class="banner_text">${banner.des}</h1>
							<div class="banner_price">
								<span><fmt:formatNumber value="${banner.price}"
										type="number" maxIntegerDigits="14" /></span>
								<fmt:formatNumber value="${banner.price_net}" type="number"
									maxIntegerDigits="14" />
							</div>
							<div class="banner_product_name">${banner.title}</div>
							<div class="button banner_button">
								<a href="#">Mua ngay</a>
							</div>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>


