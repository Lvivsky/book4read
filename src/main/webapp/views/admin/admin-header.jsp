<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!-- Header Area Start -->
<header class="header-area clearfix">
    <!-- Close Icon -->
    <div class="nav-close">
        <i class="fa fa-close" aria-hidden="true"></i>
    </div>
    <!-- Logo -->
    <div class="logo">
        <a href="/shelf"><img src="../../resources/img/icon.png" alt=""></a>
    </div>
    <!-- Amado Nav -->
    <nav class="amado-nav">
        <ul>
            <li><a href="/shelf"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back to site</a></li>
            <li><a href="/admin/statistic"><i class="fa fa-list-ul" aria-hidden="true"></i> Statistic</a></li>
            <li><a href="/admin/users"><i class="fa fa-users" aria-hidden="true"></i> Users</a></li>
            <li><a href="/admin/#">Categories</a></li>

        </ul>
    </nav>
    <!-- Button Group -->
    <div class="amado-btn-group mt-30 mb-100">
        <c:choose>
            <c:when test="${!empty pageContext.request.userPrincipal.name}">
                <a href="/my-profile" class="btn amado-btn mb-15">My account</a>
                <form id="logoutForm" method="POST" action="/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
                <a style="cursor:pointer; color:white" class="btn amado-btn mb-15" onclick="document.forms['logoutForm'].submit()">Log out</a>
            </c:when>
            <c:when test="${empty pageContext.request.userPrincipal.name}">
                <a href="/login" class="btn amado-btn mb-15">Sign in</a>
            </c:when>
        </c:choose>
    </div>
    <!-- Cart Menu -->
    <div class="cart-fav-search mb-100">
        <a href="cart.html" class="cart-nav">
            <img src="img/core-img/cart.png" alt=""> Cart <span>(0)</span>
        </a>
        <a href="#" class="fav-nav"><img src="img/core-img/favorites.png" alt=""> Favourite</a>
    </div>
    <!-- Social Button -->
    <div class="social-info d-flex justify-content-between">
        <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
        <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
    </div>
</header>
<!-- Header Area End -->