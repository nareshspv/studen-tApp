<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="webjars/bootstrap/4.1.0/css/bootstrap.min.css"
        rel="stylesheet">
<script src="webjars/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.2.1/jquery.min.js"></script>

<title>Spring Boot</title>
</head>
<body>
		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
			<div>
				<h1 class="text-center">Student List</h1>
			</div>
		</nav>
	<div class="container">
		<div>
            <a class="btn btn-info" href="/addStudent">Add Student</a>
            
        </div>
	  <table class="table table-striped">
	  <thead class="bg-primary">
	  	<tr>
	  		<th>ID</th>
	  		<th>Name</th>
	  		<th>Delete</th>
	  		<th>Update</th>
	  	</tr>
	  </thead>
	  <tbody>
		<c:forEach items="${students}" var="student">
		  	<tr>
		  		<td>${student.id }</td>
		  		<td>${student.name }</td>
		  		<td>
		  			<div>
			            <a class="btn btn-danger" href="/deleteStudent/${student.id }">delete</a>
			            
			        </div>
			     </td>
			     <td><div>
			            <a class="btn btn-primary" href="/updateStudent/${student.id }">update</a>
			            
			        </div>
			        </td>
		  	</tr>
		</c:forEach>
	  </tbody>
	  </table>
	</div>
  

</body>
</html>