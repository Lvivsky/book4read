<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

    <!-- Title  -->
    <title>Book4Read Authorization</title>

    <!-- Favicon  -->
    <link rel="icon" href="../resources/img/icon.png">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="../resources/css/core-style.css">
    <link rel="stylesheet" href="../resources/css/style.css">

</head>

<body>
<!-- Search Wrapper -->
<jsp:include page="fragments/search-wraper.jsp"/>

<!-- ##### Main Content Wrapper Start ##### -->
<div class="main-content-wrapper d-flex clearfix">

    <!-- Mobile Nav (max width 767px)-->
    <jsp:include page="fragments/mobile-navigation.jsp"/>

    <!-- Header Area Start -->
    <jsp:include page="fragments/header.jsp"/>

    <div class="cart-table-area section-padding-100">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="checkout_details_area mt-50 clearfix">

                        <div class="cart-title">
                            <h2>Registration</h2>
                        </div>

                        <form:form method="POST" modelAttribute="userForm" class="form-signin">
                            <div class="row">

                                <spring:bind path="email">
                                    <div class="form-group col-12 mb-3 ${status.error ? 'has-error' : ''}">
                                        <form:input required="true" type="email" path="email" class="form-control" placeholder="Email" autofocus="true"/>
                                        <form:errors path="email"/>
                                    </div>
                                </spring:bind>

                                <spring:bind path="password">
                                    <div class="form-group col-12 mb-3 ${status.error ? 'has-error' : ''}">
                                        <form:input required="true" type="password" path="password" class="form-control" placeholder="Password"/>
                                        <form:errors path="password"/>
                                    </div>
                                </spring:bind>

                                <spring:bind path="firstName">
                                    <div class="form-group col-12 mb-3 ${status.error ? 'has-error' : ''}">
                                        <form:input required="true" type="text" path="firstName" class="form-control" placeholder="First name"/>
                                        <form:errors path="firstName"/>
                                    </div>
                                </spring:bind>

                                <spring:bind path="lastName">
                                    <div class="form-group col-12 mb-3 ${status.error ? 'has-error' : ''}">
                                        <form:input type="text" path="lastName" class="form-control" placeholder="Last name"/>
                                        <form:errors path="lastName"/>
                                    </div>
                                </spring:bind>

                                <spring:bind path="birthday">
                                    <div class="form-group col-md-6 mb-3 ${status.error ? 'has-error' : ''}">
                                        <form:input required="true" type="date" path="birthday" class="form-control" placeholder="Date"/>
                                        <form:errors path="birthday"/>
                                    </div>
                                </spring:bind>

                                <spring:bind path="phone">
                                    <div class="form-group col-md-6 mb-3 ${status.error ? 'has-error' : ''}">
                                        <form:input type="number" path="phone" maxlength="10" class="form-control" placeholder="Phone number"/>
                                        <form:errors path="phone"/>
                                    </div>
                                </spring:bind>

                                <div class="col-4 mb-3">
                                    <input class="btn amado-btn mb-15" type="submit" value="Submit"/>
                                </div>
                                <div class="col-4 mb-3">
                                    <a href="/login" class="btn amado-btn mb-15" type="button">Log in</a>
                                </div>
                            </div>
                        </form:form>


                    </div>
                </div>
<%--                <div class="col-12 col-lg-4">--%>
<%--                    <div class="cart-summary">--%>
<%--                        <h5>Cart Total</h5>--%>
<%--                        <ul class="summary-table">--%>
<%--                            <li><span>subtotal:</span> <span>$140.00</span></li>--%>
<%--                            <li><span>delivery:</span> <span>Free</span></li>--%>
<%--                            <li><span>total:</span> <span>$140.00</span></li>--%>
<%--                        </ul>--%>

<%--                        <div class="payment-method">--%>
<%--                            <!-- Cash on delivery -->--%>
<%--                            <div class="custom-control custom-checkbox mr-sm-2">--%>
<%--                                <input type="checkbox" class="custom-control-input" id="cod" checked>--%>
<%--                                <label class="custom-control-label" for="cod">Cash on Delivery</label>--%>
<%--                            </div>--%>
<%--                            <!-- Paypal -->--%>
<%--                            <div class="custom-control custom-checkbox mr-sm-2">--%>
<%--                                <input type="checkbox" class="custom-control-input" id="paypal">--%>
<%--                                <label class="custom-control-label" for="paypal">Paypal <img class="ml-15" src="img/core-img/paypal.png" alt=""></label>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="cart-btn mt-100">--%>
<%--                            <a href="#" class="btn amado-btn w-100">Checkout</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

            </div>
        </div>
    </div>
</div>
<!-- ##### Main Content Wrapper End ##### -->



<!-- Footer -->
<jsp:include page="fragments/footer.jsp"/>

<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
<script src="../resources/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="../resources/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="../resources/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="../resources/js/plugins.js"></script>
<!-- Active js -->
<script src="../resources/js/active.js"></script>

</body>

</html>