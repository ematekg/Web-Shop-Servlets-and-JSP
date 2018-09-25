
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/Resources/js/header.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#"><div style="overflow: auto"><img src="${pageContext.request.contextPath}/Resources/images/Scott.jpg"></div></a>
        </div>
        <ul class="nav navbar-brand">
            <li class="active"><a href="bikes"><h2  >Home</h2></a></li>

        </ul>
        <ul class="nav navbar-nav navbar-right">
            <form action="cart" method="post" id="ff">
                <li><button  type="submit" id="c" class="btn  btn-info btn-lg">
                <span class="glyphicon glyphicon-shopping-cart"></span> <span id="btnqty">0</span> Items
            </button></li>
            </form>
            <br>
            <br>
            <%--<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>--%>
        </ul>
    </div>
</nav>
<input type="hidden" id="txthid" value="k">
</body>
</html>
