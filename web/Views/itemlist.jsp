
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Shopping List Example</title>
    <meta charset="utf-8" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="<c:url value='/Resources/css/itemlist.css'/>" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/Resources/js/itemlist.js"></script>
</head>
<body>
<jsp:include page='header.jsp'/>

<div class="container">

    <div class="main">
<br>

        <div class="hdr"><h1>Your Cart</h1></div>
        <div class="chkout">
            <form id="frm" action="Views/userinfo.jsp">
              <label id="lbl">  Total: ${subtotal}</label>
                <input id="hid" type="hidden" name="ids"  value="${subtotal}">
                <input id="sbt" type="submit" value="CheckOut" class="btn btn-info btn-lg">
            </form>
        </div>
    </div>

            <c:forEach items="${sitems}" var="bike" >

                <div class="well lists">
                    <div class="imgs">
                   <img src="${pageContext.request.contextPath}${bike.value.img}">
                    </div>
                    <div class="pr">
                        <p>${bike.value.pname}</p>
                        <p>${bike.value.price}</p>
                    </div>
                    <c:set var="k" value="${bike.value.pid}"/>
                 <span class="sp"> Qunatity: <c:out value="${sc[k]}"/> </span>
                    <input type="hidden" id="iid" value="${bike.value.pid}">
                    <input type="hidden" id="iqty" value="${sc[k]}">

                    \$ <span class="sp tv"> ${sc[k]*bike.value.price}</span>

                    <button type="button" class="link btn-link btn-sm rmv">
                        <span class="glyphicon">&#xe014;</span>
                    </button>

                </div>
                <c:set var="subtotal" value="${subtotal+(sc[k]*bike.value.price)}"/>

            </c:forEach>
    <div class="nt"><p> Subtotal</p><input type="hidden" id="ttl" value="${subtotal}"></div>






</div>
</body>
</html>