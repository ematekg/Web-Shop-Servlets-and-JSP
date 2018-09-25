<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ella Bike Shop</title>
    <meta charset="utf-8">

      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="<c:url value='/Resources/css/bike.css'/>" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/Resources/js/bike.js"></script>
</head>
<body>
<jsp:include page='header.jsp'/>
<div class="display">
    <img src="${pageContext.request.contextPath}${bike.img}" style="width:100%">


</div>
<div class="info">
    <h2>${bike.pname}</h2>
    <h3 style="color: darkgreen">\$${bike.price}</h3>

    <select id="qty" >
        <option selected>Quantity</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
        <option>6</option>
        <option>7</option>
        <option>8</option>
        <option>9</option>
        <option>10</option>

    </select>
    <button id="cart" value="${bike.pid}" class="btn btn-info btn-lg"   > Add To Cart</button>
    <br>
    <hr>

    <pre>Features

ALUXX-grade butted aluminum frame with 120mm of FlexPoint suspension
SR Suntour Axon RL-R 120mm-travel fork
SR Suntour Epixon R rear shock
Giant XC-2 Disc wheelset with Maxxis Ardent tubeless tires
Shimano 2x9-speed drivetrain with Shimano M315 hydraulic disc brakes
    </pre>


</div>
<div class="comment">
    <h4>Revew Product:  </h4>
<br>
    <div class="form-group">
        <label for="usr">Title:</label>
        <input type="text" class="form-control"   id="usr">
    </div>
    <div class="form-group">
        <label for="comment">Review:</label>
        <textarea  rows="5"  class="form-control"  id="comment"></textarea>
    </div>
    <button type="submit" class="btn btn-default btn-lg " id="btncom">Submit</button>

<br>


        <h4 id="tests"> What people say about the product </h4>

        <div class="container">
            <div class="row">
                <div class="col-sm-8 rw">
                    <div class="panel panel-white post panel-shadow">
                        <div class="post-heading">
                            <div class="pull-left image">
                                <img src="http://bootdey.com/img/Content/user_1.jpg" class="img-circle avatar" alt="user profile image">
                            </div>
                            <div class="pull-left meta">
                                <div class="title h5">
                                    <a href="#" id="us"><b>Ryan Haywood</b></a>

                                </div>
                                <h6 class="text-muted time">1 minute ago</h6>
                            </div>
                        </div>
                        <div class="post-description">
                            <p>Bootdey is a gallery of free snippets resources templates and utilities for bootstrap css hmtl js framework. Codes for developers and web designers</p>
                            <div class="stats">
                                <a href="#" class="btn btn-default stat-item">
                                    <i class="fa fa-thumbs-up icon"></i>2
                                </a>
                                <a href="#" class="btn btn-default stat-item">
                                    <i class="fa fa-thumbs-down icon"></i>12
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <c:forEach items="${bike.comments}" var="comment" >
             <div class="col-sm-8">
                    <div class="panel panel-white post panel-shadow">
                        <div class="post-heading">
                            <div class="pull-left image">
                                <img src="http://bootdey.com/img/Content/user_1.jpg" class="img-circle avatar" alt="user profile image">
                            </div>
                            <div class="pull-left meta">
                                <div class="title h5">
                                    <a href="#"><b>${comment.title}</b></a>

                                </div>
                                <h6 class="text-muted time">1 minute ago</h6>
                            </div>
                        </div>
                        <div class="post-description">
                            <p> ${comment.review}</p>
                            <div class="stats">
                                <a href="#" class="btn btn-default stat-item">
                                    <i class="fa fa-thumbs-up icon"></i>2
                                </a>
                                <a href="#" class="btn btn-default stat-item">
                                    <i class="fa fa-thumbs-down icon"></i>12
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>




        <%--<div class="well lists">--%>
            <%--<div class="imgs">--%>
                <%--<h1>${comment.title}</h1>--%>
            <%--</div>--%>
            <%--<div class="pr">--%>
              <%--${comment.review}--%>
            <%--</div>--%>


<%--</div>--%>
</body>
</html>
