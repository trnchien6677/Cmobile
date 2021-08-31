<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Admin-Category</title>

<!-- Custom fonts for this template -->
<link
	href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
	
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/ckfinder/ckfinder.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/ckeditor/config.js"></script>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">C mobile</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="admin_user"> <i class="fas fa-user-tie"></i> <span>User</span>
			</a></li>
			<!-- Divider -->
			<hr class="sidebar-divider">


			<!-- Nav Item - Tables -->
			<li class="nav-item active"><a class="nav-link"
				href="admin_product"> <i class="fas fa-cog fa-pulse"></i> <span>Products</span>
			</a></li>

			<hr class="sidebar-divider">


			<!-- Nav Item - Tables -->
			<li class="nav-item active"><a class="nav-link"
				href="admin_category"> <i class="fas fa-laugh-squint"></i> <span>Category</span>
			</a></li>

			<hr class="sidebar-divider">


			<!-- Nav Item - Tables -->
			<li class="nav-item active"><a class="nav-link"
				href="admin_news"> <i class="	fas fa-file-alt"></i> <span>Tin
						tức</span>
			</a></li>

			<hr class="sidebar-divider">


			<!-- Nav Item - Tables -->
			<li class="nav-item active"><a class="nav-link"
				href="/OneTechHibernate"> <i class="fas fa-laptop-house"></i> <span>Trang
						chủ</span>
			</a></li>



		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">


				<!-- Begin Page Content -->
				<div class="container-fluid">


					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Edit News</h6>
						</div>
						<div>
							
							
							<form:form method="post" action="/OneTechHibernate/editsavenews">
								<table>
								<tr>
										<td></td>
										<td><form:hidden path="id" />${news.getId()}</td>
									</tr>


									<tr>
										<td>Chủ đề :</td>
										<td><form:input style="width: 820px;height: 50px"
												path="title" />${news.getTitle()}</td>

									</tr>

									<tr>
										<td>Nội dung :</td>
										<td><form:textarea rows="" cols="" id="editor"
												name="editor" style="width: 500px;height: 250px"
												path="descrip" />${news.getDescrip()}</td>
									</tr>
									<tr>
										<td>Demo :</td>
										<td><form:input style="width: 820px;height: 50px"
												path="demo" />${news.getDemo()}</td>

									</tr>
									<tr>
										<td>Image :</td>
										<td><form:input style="width: 820px;height: 50px"
												path="image" />${news.getImage()}</td>

									</tr>
									<tr>
										<td></td>
										<td><input type="submit" value="Edit Save" /></td>
									</tr>
								</table>
							</form:form>
						</div>



					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->





	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageContext.request.contextPath }/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="${pageContext.request.contextPath }/resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath }/resources/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script
		src="${pageContext.request.contextPath }/resources/js/demo/datatables-demo.js"></script>
  <script>
	 CKEDITOR.replace('editor',
				{
			filebrowserBrowseUrl : '${pageContext.request.contextPath}/resources/ckfinder/ckfinder.html',
			filebrowserImageBrowseUrl : '${pageContext.request.contextPath}/resources/ckfinder/ckfinder.html?type=Images',
			filebrowserFlashBrowseUrl : '${pageContext.request.contextPath}/resources/ckfinder/ckfinder.html?type=Flash',
			filebrowserUploadUrl : '${pageContext.request.contextPath}/resources/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
			filebrowserImageUploadUrl : '${pageContext.request.contextPath}/resources/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
			filebrowserFlashUploadUrl : '${pageContext.request.contextPath}/resources/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash',
			filebrowserWindowWidth: '1000' ,
		 	filebrowserWindowHeight: '700' 
		});
	
		CKEDITOR.config.entities_latin = false;
	</script>
</body>

</html>