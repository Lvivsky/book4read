<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <li>
                <c:choose>
                    <c:when test="${!empty pageContext.request.userPrincipal.name}">
                        <a href="#">${pageContext.request.userPrincipal.name}</a>
                    </c:when>
                    <c:when test="${empty pageContext.request.userPrincipal.name}">
                        <a href="/login">Sign in</a>
                    </c:when>
                </c:choose>
            </li>
            <li><a href="/shelf">Shelf</a></li>
            <li><a href="#">Shop</a></li>
            <li><a href="#">Product</a></li>

            <c:if test="${!empty pageContext.request.userPrincipal.name}">
                <form id="logoutForm" method="POST" action="/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
                <li><a style="cursor:pointer" onclick="document.forms['logoutForm'].submit()">Log out</a></li>
            </c:if>
        </ul>
    </nav>
    <!-- Button Group -->
    <div class="amado-btn-group mt-30 mb-100">
        <a href="#" class="btn amado-btn mb-15">%Discount%</a>
        <a href="#" class="btn amado-btn active">New this week</a>
    </div>
    <!-- Cart Menu -->
    <div class="cart-fav-search mb-100">
        <a href="cart.html" class="cart-nav"><img src="img/core-img/cart.png" alt=""> Cart <span>(0)</span></a>
        <a href="#" class="fav-nav"><img src="img/core-img/favorites.png" alt=""> Favourite</a>
        <a href="#" class="search-nav"><img src="img/core-img/search.png" alt=""> Search</a>
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