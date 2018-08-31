<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/journal/bootstrap.min.css" />
<link rel="stylesheet" href="/styles.css" />
<title>StayHere Hotel Search</title>
<center>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href=""></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
    </ul>
  </div>
</nav>
</head> 
<body>
<div class="jumbotron">
<img src="https://png2.kisspng.com/20180314/wle/kisspng-tourism-flat-design-computer-icons-beach-flat-views-of-the-city-vector-5aa9abc15443f4.2639112415210689933452.png" alt="" height="150" width="200">
  <h1 class="display-3">StayHere Online Hotel Search</h1>
  <hr class="my-4">
  <p></p>
  <p>Let's find the perfect hotel for you!</p>
	</div>
	<div class="container">
 
<form action="/results" method="post">

<div class="input-group">
    <select name="city" class="custom-select" id="inputGroupSelect">
    <option selected>Select Your Destination</option>
    <option value="Houston">Houston, Texas</option>
    <option value="Detroit">Detroit, Michigan</option>
    <option value="Miami">Miami, Florida </option>
    <option value="Phoenix">Phoenix, Arizona</option>
    </select>
  <div class="input-group-append">
    <button class="btn btn-outline-primary" type="submit">FIND YOUR HOTEL</button>
  </div>
	 </div>
</body>
</html>


