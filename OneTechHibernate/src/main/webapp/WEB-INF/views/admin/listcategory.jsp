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
<link href="${pageContext.request.contextPath }/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
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
				<div class="sidebar-brand-text mx-3">
					C mobile 
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link" href="admin_user">
					<i class="fas fa-user-tie"></i> <span>User</span>
			</a></li>
			<!-- Divider -->
			<hr class="sidebar-divider">


			<!-- Nav Item - Tables -->
			<li class="nav-item active"><a class="nav-link" href="admin_product">
					<i class="fas fa-cog fa-pulse"></i> <span>Products</span>
			</a></li>
			
				<hr class="sidebar-divider">


			<!-- Nav Item - Tables -->
			<li class="nav-item active"><a class="nav-link" href="admin_category">
					<i class="fas fa-laugh-squint"></i> <span>Category</span>
			</a></li>
			
					<hr class="sidebar-divider">


			<!-- Nav Item - Tables -->
			<li class="nav-item active"><a class="nav-link" href="admin_news">
					<i class="	fas fa-file-alt"></i> <span>Tin tức</span>
			</a></li>
			
				<hr class="sidebar-divider">


			<!-- Nav Item - Tables -->
			<li class="nav-item active"><a class="nav-link" href="/OneTechHibernate">
					<i class="fas fa-laptop-house"></i> <span>Trang chủ</span>
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
							<h6 class="m-0 font-weight-bold text-primary">DataTables
								Example</h6>
						</div>
						<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%"
				cellspacing="0">
				<thead>
					<tr>
						<th>Id</th>
						<th>Image</th>
						<th>Name</th>
						<th>Price</th>

						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>Id</th>
						<th>Image</th>
						<th>Name</th>
						<th>Price</th>

						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</tfoot>
				<tbody>
					<c:forEach var="emp" items="${list}">
						<tr>
							<td>${emp.id}</td>
							<td><div
									class="product_image d-flex flex-column align-items-center justify-content-center">
									<img src="resources/images/${emp.image}" alt="">
								</div></td>
							<td>${emp.name}</td>
							<td>${emp.price}</td>

							<td><a href="editemp/${emp.id}"><i class="fas fa-edit"></i>
									Edit</a></td>
							<td><a href="deleteemp/${emp.id}"><i
									class="fas fa-trash-alt"></i> Delete</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
				<button><a href="addemp" type="">Add Category</a></button>
		</div>
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

</body>

</html>