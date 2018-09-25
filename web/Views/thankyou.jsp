
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">
    <title>CheckOut</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="//code.z01.com/v4/dist/css/bootstrap.min.css" >
    <link rel="stylesheet" href="//code.z01.com/boot/dist/css/font-awesome.min.css" >

    <link href="<c:url value='/Resources/css/thankyou.css'/>" rel="stylesheet"/>




</head>
<body>
<div class="container">
    <div class="py-5 text-center">

        <h2>Confirmation Page</h2>
        <!--<p class="lead">Below is an example form built entirely with Bootstrap's form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>-->
    </div>
    <div class="row" >
        <div class="col-md-8 order-md-2 mb-4 ">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-muted">Thank You For Your Order</span>
                <span class="badge badge-secondary badge-pill"><label></label></span>
                <a href="${pageContext.request.contextPath}/customer" class="mb-3">Account Info</a>


            </h4>
            <p>Your Order Will be shipped soon!</p>
            <ul class="list-group mb-6">


                <c:forEach items="${sitems}" var="bike" >


                <li class="list-group-item d-flex justify-content-between lh-condensed lst">
                    <div class="imgs">
                        <img src="${pageContext.request.contextPath}${bike.value.img}">
                    </div>
                    <div class="pr">
                        <p>${bike.value.pname}</p>
                        <p>${bike.value.price}</p>
                    </div>
                        <c:set var="k" value="${bike.value.pid}"/>
                    <span> Qunatity: <c:out value="${sc[k]}"/> </span>

                    $ ${sc[k]*bike.value.price}

                        <small class="text-muted">
                            <label ></label>
                        </small>

                </li>
                    <c:set var="subtotal" value="${subtotal+(sc[k]*bike.value.price)}"/>
                    <c:set var="tax" value="${subtotal*0.1}"/>
                    <c:set var="total" value="${subtotal+tax}"/>
                </c:forEach>
                <li class="list-group-item d-flex justify-content-between lh-condensed lst">
                    <div>
                        <h6 class="my-0">Sub Total</h6>
                        <small class="text-muted">
                            <label ></label>
                        </small>
                    </div>
                    <span class="text-muted">$ <label >${subtotal}</label></span>
                </li>
                <li class="list-group-item d-flex justify-content-between lh-condensed lst">
                    <div class="text-danger">
                        <span> Tax(USD)</span>
                    </div>
                    <span class="text-danger">+\$${tax} <label name='latefee'></label></span>
                </li>

                <li class="list-group-item d-flex justify-content-between lst" >
                    <span>Total (USD)</span>
                    <strong><label >${total}</label></strong>
                </li>
            </ul>
<br>
            <div>
<form action="cart">
    <input type="hidden" name="clr" value="clr">
                <input class="btn btn-primary btn-lg btn-block" type="submit" value="Continue Shopping">
</form>
            </div>


        </div>

    </div>
    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2018 Group7</p>

    </footer>
</div>
<!-- Bootstrap 核心 JavaScript -->
<script src="//code.z01.com/jquery/jquery-3.2.1.min.js" ></script>
<script src="//code.z01.com/v4/dist/js/popper.min.js"></script>
<script src="//code.z01.com/v4/dist/js/bootstrap.min.js" ></script>
<script src="${pageContext.request.contextPath}/Resources/js/thankyou.js"></script>

</body>
</html>