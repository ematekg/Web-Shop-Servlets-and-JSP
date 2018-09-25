
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

    <link href="<c:url value='/Resources/css/userinfo.css'/>" rel="stylesheet"/>




</head>
<body>
<div class="container">
    <div class="py-5 text-center">

        <h2>CheckOut Form</h2>
        <!--<p class="lead">Below is an example form built entirely with Bootstrap's form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>-->
    </div>
    <div class="row" >
        <div class="col-md-4 order-md-2 mb-4 crt">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-muted">Cart</span>
                <span class="badge badge-secondary badge-pill"><label></label></span>
            </h4>
            <ul class="list-group mb-3">
                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div>
                        <h6 class="my-0">Sub-Total</h6>
                        <small class="text-muted">
                            <label ></label>
                        </small>
                    </div>
                    <span class="text-muted">$ <label >${param.ids}</label></span>
                </li>


                <li class="list-group-item d-flex justify-content-between lh-condensed">
                    <div class="text-danger">
                        <span> Tax(USD)</span>
                    </div>
                    <span class="text-danger">+$ ${param.ids*0.1}<label name='latefee'></label></span>
                </li>

                <li class="list-group-item d-flex justify-content-between">
                    <span>Total (USD)</span>
                    <strong><label >${param.ids+(param.ids*0.1)}</label></strong>
                </li>
            </ul>


        </div>
        <div class="col-md-6 order-md-1">
            <h4 class="mb-3">Customer Informtion</h4><a href="${pageContext.request.contextPath}/login" class="mb-3">Already have an account? Log In</a>
            <form method="post" action="/Bike-Shop/customer" class="needs-validation" novalidate   >
                <input type="hidden"   name='customerid' />
                <input type="hidden"   name='latefee'/>
                <div>

                    <input type="hidden"   name='totalfee' />
                </div>
                <div>

                    <input type="hidden"   name='promocode' />
                </div>
                <div >

                    <input type="hidden"   name='promovalue'/>
                </div>



                <div class="mb-3">
                    <label for="address">Full Name</label>
                    <input type="text" class="form-control" id="fullname"  name="fullname" required>
                    <div class="invalid-feedback">
                        Please enter your Full Name.
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email">Email</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">@</span>
                        </div>
                        <input type="text" class="form-control" id="email" name="email" placeholder="email" required>
                        <div class="invalid-feedback" style="width: 100%;">
                            Your Email is required.
                        </div>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="pass">Password</label>
                    <input type="text" class="form-control" id="pass"  name="pass" required>
                    <div class="invalid-feedback">
                        Please enter your Full Name.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="cpass">Confirm Password</label>
                    <input type="text" class="form-control" id="cpass"  name="cppass" required>
                    <div class="invalid-feedback">
                        Please enter your Full Name.
                    </div>
                </div>



                <div class="mb-3">
                    <hr class="mb-4">
                    <h5 class="d-flex justify-content-between align-items-center mb-3">
                        <span class="text-muted">Shipping address</span>
                    </h5>
                    <hr class="mb-4">


                    <input type="text" class="form-control" id="address" name="street" placeholder="Street"  required>
                    <div class="invalid-feedback">
                        Please enter your shipping address.
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label for="zip">State</label>
                        <input type="text" class="form-control" id="state" name="state" placeholder="" required>
                        <div class="invalid-feedback">
                            State code required.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="zip">City</label>
                        <input type="text" class="form-control" id="city" placeholder="" name="city" required>
                        <div class="invalid-feedback">
                            City required.
                        </div>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label for="zip">Zip</label>
                        <input type="text" class="form-control" id="zip" placeholder="" name="zip" required>
                        <div class="invalid-feedback">
                            Zip code required.
                        </div>
                    </div>
                </div>



                <hr class="mb-4">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-muted">Payment Details</span>

                </h4>
                <hr class="mb-4">


                <div class="row">

                    <div class="col-md-12 mb-3">
                        <label for="cc-number">Credit card number</label>
                        <input type="password" class="form-control" id="cc-number" name="cardno" pattern="[0-9]{9,}" placeholder="" required>
                        <div class="invalid-feedback">
                            Credit card number is required
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="cc-expiration">Expiration</label>
                        <input type="text" class="form-control" id="cc-expiration"  name="exp" placeholder="" required>
                        <div class="invalid-feedback">
                            Expiration date required
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <label for="cc-expiration">CVV</label>
                        <input type="text" class="form-control" id="cc-cvv" placeholder="" name="cvv"  pattern="[0-9]{3}" required>
                        <div class="invalid-feedback">
                            Security code required
                        </div>
                    </div>
                </div>
                <hr class="mb-4">


                <button class="btn btn-primary btn-lg btn-block" type="submit">Continue</button>
            </form>
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
<script src="${pageContext.request.contextPath}/Resources/js/userinfo.js"></script>

</body>
</html>