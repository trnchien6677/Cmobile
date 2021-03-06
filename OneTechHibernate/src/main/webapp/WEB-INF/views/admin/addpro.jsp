<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Add-Products</title>

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
						t???c</span>
			</a></li>

			<hr class="sidebar-divider">


			<!-- Nav Item - Tables -->
			<li class="nav-item active"><a class="nav-link"
				href="/OneTechHibernate"> <i class="fas fa-laptop-house"></i> <span>Trang
						ch???</span>
			</a></li>



		</ul>
		<!-- End of Sidebar -->

		<div class="container-fluid">

			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Th??m s???n ph???m
						m???i</h6>
				</div>

				<div class="card-body">
					<div class="table-responsive">

						<form:form method="post" action="savepro">
							<table>

								<%-- <div class="form-group">
											<form:label path="id">
												<spring:message text="M?? s???n ph???m" />
											</form:label>
											<form:input path="id" readonly="true" size="8"
												disabled="true" class="form-control" />
											<form:hidden path="id" />
										</div> --%>


								<div class="form-group">
									<label for="">T??n s???n ph???m</label>
									<form:input path="title" required="true" type="text"
										class="form-control" />
								</div>
								<div class="form-group">
										<tr>
										<td>N???i dung :</td>
										<td>	<form:input path="description" required="true" type="text"
										class="form-control" />
										</td>
									</tr>
								</div>
								<div class="form-group">
									<label for="">H??nh ???nh</label>
									<form:input path="image" required="true" type="text"
										class="form-control" />
								</div>
								<div class="form-group">
									<label for="">S??? l?????ng c??n l???i</label>
									<form:input path="available" type="number" min="0"
										required="true" class="form-control" />
								</div>
								<div class="form-group">
									<label for="">S??? l?????ng ???? b??n</label>
									<form:input path="sold" type="number" min="0" required="true"
										class="form-control" />
								</div>
								<div class="form-group">
									<label for="">Khuy???n m??i (%)</label>
									<form:input path="discount" type="number" min="0"
										required="true" class="form-control" />
								</div>

								<div class="form-group">
									<label for="">Th????ng hi???u</label>
									<form:input path="brand" required="true" type="text"
										class="form-control" />
								</div>
								<div class="form-group">
									<label for="">Gi??</label>
									<form:input path="price" type="text" min="0"
										class="form-control" />
								</div>
								<div class="form-group">
									<label for="">Gi?? KM</label>
									<form:input path="price_net" type="text" min="0"
										class="form-control" />
								</div>

								<div class="form-group">
									<label for="">Cover</label>

									<form:checkbox path="cover" class="form-control" />
								</div>
								<div class="form-group">
									<label for="">S???n ph???m n???i b???t</label>

									<form:checkbox path="hot_deal" class="form-control" />
								</div>
								<div class="form-group">
									<label for="">S???n ph???m m???i</label>

									<form:checkbox path="hot_new" class="form-control" />
								</div>
								<div class="form-group">
									<label for="">S???n ph???m KM</label>

									<form:checkbox path="hot_best" class="form-control" />
								</div>
								<div class="form-group">
									<label for="">Xu h?????ng</label>

									<form:checkbox path="trend" class="form-control" />
								</div>
								<div class="form-group">
									<label for="">???? xem</label>

									<form:checkbox path="latest_review" class="form-control" />
								</div>
								<div class="form-group">
									<label for="">Danh m???c</label>

									<form:input path="id_category" type="number"
										class="form-control" />  
								</div>

								<tr>
									<td></td>
									<td><input type="submit" value="Save" /></td>
								</tr>
							</table>
						</form:form>

					</div>
				</div>
			</div>

		</div>

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
CKEDITOR.replace('editor');
</script>
</body>

</html>