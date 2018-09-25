
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Ella Bike Shop</title>
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
<jsp:include page='header.jsp'/>


<div class="container">
  <div id="Ma inMenu">
    <div class="list-group panel sidebar">
      <h4>Filters</h4>
      <a href="#demo1" class="list-group-item list-group-item-success strong" style="background: #f7f7f7;" data-toggle="collapse" data-parent="#MainMenu"><i class="fa fa-photo"></i>Brand<i class="fa fa-caret-down"></i></a>
      <div class="collapse list-group-submenu" id="demo1">
        <a href="#" class="list-group-item"><input type="checkbox" id="dmd" value="Diamondback">&nbsp; Diamondback</a>
        <a href="#" class="list-group-item"><input type="checkbox" value="Giant">&nbsp; Giant</a>

      </div>
      <a href="#demo2" class="list-group-item list-group-item strong" data-toggle="collapse" data-parent="#MainMenu"><i class="fa fa-book"></i> Size <i class="fa fa-caret-down"></i></a>
      <div class="collapse list-group-submenu" id="demo2">
        <a href="#" class="list-group-item"><input type="checkbox" value='26" Mountain Bikes'>&nbsp; 26" Mountain Bikes</a>

        <a href="#" class="list-group-item"><input type="checkbox" value='26" Mountain Bikes'>&nbsp; 29" Mountain Bikes</a>

      </div>
      <a href="#demo4" class="list-group-item list-group-item strong" data-toggle="collapse" data-parent="#MainMenu"><i class="fa fa-language"></i> Gender <i class="fa fa-caret-down"></i></a>
      <div class="collapse list-group-submenu" id="demo4">
        <a href="#" class="list-group-item"><input type="checkbox" value="Boys">&nbsp; Boys</a>
        <a href="#" class="list-group-item"><input type="checkbox" value="Girls">&nbsp; Girls</a>

      </div>

    </div>
  </div>
  <div class="main">
    <div class="w3-container w3-teal">
      <h1>Bikes</h1>
    </div>
      <div class="w3-row-padding w3-margin-top">
      <c:forEach items="${bikes}" var="bike" >

      <div class="w3-third">
        <div class="w3-card">
          <img src="${pageContext.request.contextPath}${bike.img}" style="width:100%">
          <div class="w3-container">
            <h5>${bike.pname} - \$ ${bike.price}</h5>
            <p class="ph">${bike.pid}</p>
            <p class="hc">${bike.category}</p>
          </div>
        </div>
      </div>

    </c:forEach>
    </div>







    <form id="frm" action="bike">
  <input id="hid" type="hidden" name="ids" >
  <input id="sbt" type="submit">
</form>


  </div>

</div>
</body>
</html>