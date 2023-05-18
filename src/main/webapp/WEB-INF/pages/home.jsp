<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<title><c:out value="${page}"></c:out></title>
</head>
<body>
	<h1>Hello, world!</h1>
	<div class="container mt-3">
		<h1 class="text-center">TODO Manager</h1>
		
		<c:if test="${not empty msg}">
		<div class="alert alert-success">
			<b><c:out value="${msg}"></c:out></b>
		</div>
		</c:if>
		
		<div class="row mt-4">
			<div class="col-md-2">
				<h3>Options</h3>
				<div class="list-group">
					<a href='<c:url value='/home'></c:url>' 
						class="list-group-item list-group-item-action"
						aria-current="true"
						><h5 class="active">Menu</h5> 
						 </a>
					<a href='<c:url value='/add'></c:url>' class="list-group-item list-group-item-action active">
						Add item</a> 
					<a href='<c:url value='/home'></c:url>' class="list-group-item list-group-item-action ">
						View Item</a> 
					<a href='<c:url value='/rem'></c:url>' class="list-group-item list-group-item-action">
						Remove Item</a> 
				</div>
			</div>
			<div class="col-md-10">
				<c:if test="${page=='home'}">
					<h1 class="text-center">All ToDos</h1>
					
					<c:forEach items="${todos}" var="t">
						<div class="card">
							<div class="card-body">
								<h3><c:out value="${t.todoTitle}"></c:out></h3>
								<p><c:out value="${t.todoContent}"></c:out></p>
							</div>
						</div>
					</c:forEach>	
					
					
				</c:if>
				<c:if test="${page=='add'}">
					<h1 class="text-center">Add ToDos</h1>
					<br/>
					<form:form action="saveTodo"  method="post" modelAttribute="todo">
						<div class="form-group">
							<form:input path="todoTitle" cssClass="form-control"
							 placeholder="Enter ToDO title"
							 />
						</div>
						<div class="form-group">
							<form:textarea path="todoContent" cssClass="form-control"
							 placeholder="Enter ToDo Content"
							 cssStyle="height:300px"
							 />
						</div>
						<div class="container text-center">
							<button class="btn btn-outline-success">
							ADD TODO</button>
						</div>
					</form:form>
				</c:if>
			</div>
		</div>
	</div>
	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->
</body>
</html>