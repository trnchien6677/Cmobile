<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<header class="header">

	<!-- Top Bar -->

	<div class="top_bar">
		<div class="container">
			<div class="row">
				<div class="col d-flex flex-row">
					
					<div class="top_bar_contact_item">
						<div class="cart_text">
						<i class="fas fa-user-times"></i>
							<a href="admin_user">Admin1</a>
						</div>
					
					</div>
					<div class="top_bar_contact_item">
						<div class="top_bar_icon">
							<img src="resources/images/mail.png" alt="">
						</div>
					
					</div>
					<div class="top_bar_content ml-auto">
						<div class="top_bar_menu">
							<ul class="standard_dropdown top_bar_dropdown">
								<li><a href="#">Vietnamese<i
										class="fas fa-chevron-down"></i></a>
									
								<li><a href="#">VND<i class="fas fa-chevron-down"></i></a>
									
							</ul>
						</div>
						
						
						
						<div class="top_bar_user">
							<div class="user_icon">
								<img src="resources/images/user.svg" alt="">
							</div>
							
							<c:if test="${empty sessionScope.LoginInfo }">
							<div><i class="far fa-user-circle"></i>
							<a href="${pageContext.request.contextPath}/dang-nhap">Đăng nhập</a>
							</div>
							</c:if>
							
							<c:if test="${empty sessionScope.LoginInfo }">
							<div><i class="fas fa-user-plus"></i>
							<a href="${pageContext.request.contextPath}/dang-ky">Đăng ký</a>
							</div>
							</c:if>
							
							<c:if test="${not empty sessionScope.LoginInfo }">
							<div><i class="fas fa-user-circle"></i>
							<b><a href="#">${LoginInfo.name}</a></b>
							</div>
							<div>
							<a href="${pageContext.request.contextPath}/dang-xuat">Đăng xuất</a>
							</div>
							</c:if>
							
						</div>
						
						
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Header Main -->

	<div class="header_main">
		<div class="container">
			<div class="row">

				<!-- Logo -->
				<div class="col-lg-2 col-sm-3 col-3 order-1">
					<div class="logo_container">
						<div class="logo">
							<a href="#">Cmobile</a>
						</div>
					</div>
				</div>

				<!-- Search -->
				<div
					class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
					<div class="header_search">
						<div class="header_search_content">
							<div class="header_search_form_container">
							
							
								<form action="doSearch" class="header_search_form clearfix" method="post">
									<input type="search" required="required"
										class="header_search_input"
										placeholder="Search for products...">
									<div class="custom_dropdown">
										<div class="custom_dropdown_list">
											<span class="custom_dropdown_placeholder clc">All
												Categories</span> <i class="fas fa-chevron-down"></i>
											<ul class="custom_list clc">
												<li><a class="clc" href="#">All Categories</a></li>
												<li><a class="clc" href="#">Computers</a></li>
												<li><a class="clc" href="#">Laptops</a></li>
												<li><a class="clc" href="#">Cameras</a></li>
												<li><a class="clc" href="#">Hardware</a></li>
												<li><a class="clc" href="#">Smartphones</a></li>
											</ul>
										</div>
									</div>
									<button type="submit" class="header_search_button trans_300" value="Submit">
										<img src="images/search.png" alt="">
									</button>
								</form>
								
								
							</div>
						</div>
					</div>
				</div>

				<!-- Wishlist -->
				<div
					class="col-lg-4 col-9 order-lg-3 order-2 text-lg-left text-right">
					<div
						class="wishlist_cart d-flex flex-row align-items-center justify-content-end">
						<div
							class="wishlist d-flex flex-row align-items-center justify-content-end">
							<div class="wishlist_icon">
								<img src="resources/images/heart.png" alt="">
							</div>
							<div class="wishlist_content">
								<div class="wishlist_text">
									<a href="http://localhost:8080/OneTechHibernate/">Trang chủ</a>
								</div>


							</div>
						</div>

						<!-- Cart -->
						<div class="cart">
							<div
								class="cart_container d-flex flex-row align-items-center justify-content-end">
								<div class="cart_icon">
									<img src="resources/images/cart.png" alt="">
									<div class="cart_count">
										<span>${ TotalQuantyCart }</span>
									</div>
								</div>
								<div class="cart_content">
									<div class="cart_text">	<i class="fas fa-cart-arrow-down"></i> 
										<a href="/OneTechHibernate/gio-hang"> Giỏ hàng</a>
									</div>
									<div class="cart_price"></div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Main Navigation -->

	<nav class="main_nav">
		<div class="container">
			<div class="row">
				<div class="col">

					<div class="main_nav_content d-flex flex-row">

						<!-- Categories Menu -->

						<div class="cat_menu_container">
							<div
								class="cat_menu_title d-flex flex-row align-items-center justify-content-start">
								<div class="cat_burger">
									<span></span><span></span><span></span>
								</div>
								<div class="cat_menu_text">Danh Mục</div>
							</div>

							<ul class="cat_menu">



							</ul>
						</div>

						<!-- Main Nav Menu -->

						<div class="main_nav_menu ml-auto">
							<ul class="standard_dropdown main_nav_dropdown">
								<li><a href="/OneTechHibernate">Trang chủ<i class="fas fa-chevron-down"></i></a></li>
								<li class="hassubs"><a href="#">Giao dịch nhanh<i
										class="fas fa-chevron-down"></i></a>
									<ul>
										<c:forEach var="menu" items="${listMenu}">
											<li><a href="shop.html">${menu.title}<i
													class="fas fa-chevron-down"></i></a></li>
										</c:forEach>
									</ul></li>
								<li class="hassubs"><a href="#">Thương hiệu nổi bật<i
										class="fas fa-chevron-down"></i></a>
									<ul>
										<c:forEach var="menu" items="${listMenu}">
											<li><a href="shop.html">${menu.title}<i
													class="fas fa-chevron-down"></i></a></li>
										</c:forEach>
									</ul></li>
								<li class="hassubs"><a href="#">Trang web<i
										class="fas fa-chevron-down"></i></a>
									<ul>
										<c:forEach var="menu" items="${listMenu}">
											<li><a href="shop.html">${menu.title}<i
													class="fas fa-chevron-down"></i></a></li>
										</c:forEach>
									</ul></li>
								<li><a href="bai-viet">Bài viết<i
										class="fas fa-chevron-down"></i></a></li>
										
								<li><a href="contact.html">Liên hệ<i
										class="fas fa-chevron-down"></i></a></li>
							</ul>
						</div>

						<!-- Menu Trigger -->

						<div class="menu_trigger_container ml-auto">
							<div
								class="menu_trigger d-flex flex-row align-items-center justify-content-end">
								<div class="menu_burger">
									<div class="menu_trigger_text">menu</div>
									<div class="cat_burger menu_burger_inner">
										<span></span><span></span><span></span>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</nav>

	<!-- Menu -->

	<div class="page_menu">
		<div class="container">
			<div class="row">
				<div class="col">

					<div class="page_menu_content">

						<div class="page_menu_search">
							<form action="#">
								<input type="search" required="required"
									class="page_menu_search_input"
									placeholder="Tìm kiếm các sản phẩm...">
							</form>
						</div>
						<ul class="page_menu_nav">
							<li class="page_menu_item has-children"><a href="#">Language<i
									class="fa fa-angle-down"></i></a>
								<ul class="page_menu_selection">
									<li><a href="#">English<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Italian<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Spanish<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Japanese<i class="fa fa-angle-down"></i></a></li>
								</ul></li>
							<li class="page_menu_item has-children"><a href="#">Currency<i
									class="fa fa-angle-down"></i></a>
								<ul class="page_menu_selection">
									<li><a href="#">US Dollar<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">EUR Euro<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">GBP British Pound<i
											class="fa fa-angle-down"></i></a></li>
									<li><a href="#">JPY Japanese Yen<i
											class="fa fa-angle-down"></i></a></li>
								</ul></li>
							<li class="page_menu_item"><a href="#">Home<i
									class="fa fa-angle-down"></i></a></li>
							<li class="page_menu_item has-children"><a href="#">Super
									Deals<i class="fa fa-angle-down"></i>
							</a>
								<ul class="page_menu_selection">
									<li><a href="#">Super Deals<i class="fa fa-angle-down"></i></a></li>
									<li class="page_menu_item has-children"><a href="#">Menu
											Item<i class="fa fa-angle-down"></i>
									</a>
										<ul class="page_menu_selection">
											<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
											<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
											<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
											<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
										</ul></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
								</ul></li>
							<li class="page_menu_item has-children"><a href="#">Featured
									Brands<i class="fa fa-angle-down"></i>
							</a>
								<ul class="page_menu_selection">
									<li><a href="#">Featured Brands<i
											class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
								</ul></li>
							<li class="page_menu_item has-children"><a href="#">Phong
									cách thịnh hành <i class="fa fa-angle-down"></i>
							</a>
								<ul class="page_menu_selection">
									<li><a href="#">Trending Styles<i
											class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
									<li><a href="#">Menu Item<i class="fa fa-angle-down"></i></a></li>
								</ul></li>
							<li class="page_menu_item"><a href="blog.html">Bài Viết<i
									class="fa fa-angle-down"></i></a></li>
							<li class="page_menu_item"><a href="contact.html">Liên
									Hệ<i class="fa fa-angle-down"></i>
							</a></li>
						</ul>

					
					</div>
				</div>
			</div>
		</div>
	</div>

</header>


<!-- Menu -->


</body>
</html>
