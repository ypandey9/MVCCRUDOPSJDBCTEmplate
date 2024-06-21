<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Employee List</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div
				class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
				<h1 class="text-center">Employee List</h1>
				<div class="card-body">
				 <c:if test="${empty list1}">
        <p>No employees found.</p>
    </c:if>
					<table border="1" class="table">
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Salary</th>
							<th>Designation</th>
							<th>Actions</th>
						</tr>
						<c:forEach var="emp" items="${list1}">
							<tr>
								<td>${emp.id}</td>
								<td>${emp.name}</td>
								<td>${emp.salary}</td>
								<td>${emp.designation}</td>
								<td><a href="employee/${emp.id}">View</a> | <a
									href="employee/edit/${emp.id}">Edit</a> | <a
									href="employee/delete/${emp.id}">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
					<br /> 
					<a href="employee/new">Add New Employee</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
