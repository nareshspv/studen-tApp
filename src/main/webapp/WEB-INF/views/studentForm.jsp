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
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<title>Spring Boot</title>
</head>
<body>
		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
			<div>
				<h1 class="text-center">Add New Student Details</h1>
			</div>
		</nav>
	<div class="container" >
		<form:form action="/saveStudent" type="POST" modelAttribute="student">
		  <div class="form-group">
		    <label for="studentId">Student Id</label>
		    <form:input path="id"  type="text" class="form-control" id="studentId" placeholder="Enter Student Id" />
		  </div>
		  <div class="form-group">
		    <label for="studentName">Student Name</label>
		    <form:input path="name"  type="text" class="form-control" id="studentName" placeholder="Enter Student Name" />
		  </div>
		  <button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
	</div>
  

</body>
</html>