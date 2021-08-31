<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Edit Product</h1>
<form:form method="POST" action="/OneTechHibernate/editsave">
	<table>
		<tr>
			<td></td>
			<td><form:hidden path="id" />${category.getId()}</td>
		</tr>
		<tr>
			<td>Name :</td>
			<td><form:input path="name" />${category.getName()}</td>
		</tr>
		<tr>
			<td>Price :</td>
			<td><form:input path="price" />${category.getPrice()}</td>
		</tr>
		<tr>
			<td>Image :</td>
			<td><form:input path="image" />${category.getImage()}</td>
		</tr>

		<tr>
			<td></td>
			<td><input type="submit" value="Edit Save" /></td>
		</tr>
	</table>
</form:form>
