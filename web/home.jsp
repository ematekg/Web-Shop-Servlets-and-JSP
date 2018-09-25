
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link href="<c:url value='/Resources/css/sidebar.css'/>" rel="stylesheet"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/Resources/js/home.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<div class="container">
  <div class="sidebar">
    <a href="#home"><i class="fa fa-fw fa-home"></i> Home</a>
    <a href="#services"><i class="fa fa-fw fa-wrench"></i> Services</a>
    <a href="#clients"><i class="fa fa-fw fa-user"></i> Clients</a>
    <a href="#contact"><i class="fa fa-fw fa-envelope"></i> Contact</a>
  </div>

  <div class="main">
    <div class="w3-container w3-teal">
      <h1>Summer 2015</h1>
    </div>

    <div class="w3-row-padding w3-margin-top">
      <c:forEach items="${bikes}" var="bike" >

      <div class="w3-third">
        <div class="w3-card">
          <img src="${pageContext.request.contextPath}${bike.img}" style="width:100%">
          <div class="w3-container">
            <h5>${bike.pname} - \$ ${bike.price}</h5>
            <p class="ph">${bike.pid}</p>
          </div>
        </div>
      </div>

    </c:forEach>
    </div>




  </div>

</div>
</body>
</html>