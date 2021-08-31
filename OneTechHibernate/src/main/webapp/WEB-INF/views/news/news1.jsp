<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="news" items="${listNews}">
	<div class="td_module_10 td_module_wrap td-animation-stack">
		<div class="td-module-thumb">
			<a
				href=""
				rel="bookmark"
				title="Cậu út nhà Kiwi Ngô Mai Trang bụ bẫm tròn 1 tuổi"><img
				width="218" height="150" class="entry-thumb td-animation-stack-type1-2"
				src="resources/images/${news.image}>" title=></a>
				
				class="product_image d-flex flex-column align-items-center justify-content-center">
									<img src="resources/images/${emp.image}" alt="">
		</div>
		<div class="item-details">
			<h3 class="entry-title td-module-title">
				<a
					href="http://demo2.mypagevn.com/news_mp102/2016/08/17/cau-ut-nha-kiwi-ngo-mai-trang-bu-bam-tron-1-tuoi/"
					rel="bookmark"
					title="Cậu út nhà Kiwi Ngô Mai Trang bụ bẫm tròn 1 tuổi">${news.title }</a>
			</h3>
			<div class="td-module-meta-info">
			  <span class="td-post-date"><time
						class="entry-date updated td-module-date"
						datetime="2016-08-17T03:30:10+00:00">17 Tháng Tám, 2016</time></span>
				<div class="td-module-comments">
				
				</div>
			</div>

			<div class="td-excerpt">${news.demo }</div>
		</div>
		<hr class="sidebar-divider">

	</div>
	</c:forEach>
	

	
</body>
</html>