<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Results</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/journal/bootstrap.min.css" />
<link rel="stylesheet" href="/styles.css" />
<title>StayHere Hotel Search</title>
<center>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#"></a>
  <a class="navbar-brand" href="/">Go Back To Homepage</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
    </ul>
  </div>
</nav>
</head> 
</head>
<body>
<div class="jumbotron">
<h1 class="display-3">Here Are Your Search Results</h1>
<p>You're going to love your hotel stay, Enjoy!</p>
	 
	<div class="container">
	 
	<table class="table table-hover">
	<tr class="table-secondary">
	<thead>
	<tr>
	<td>Hotel Name</td>
	<td>City</td>
	<td>Price Per Night</td>
	</thead>
	
	<c:forEach var="h" items="${ hotels }">
	
	<tr>
	<td>${ h.name }</td>
	<td>${ h.city }</td>
	<td>${ h.pricePerNight }</td>
	
	</tr>
	 
	</c:forEach>
	 
	</table>
	</div>
	
	</div>
	 
	</body>
	</html>
