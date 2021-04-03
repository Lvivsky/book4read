<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

    <!-- Title  -->
    <title>Book4Read</title>

    <!-- Favicon  -->
    <link rel="icon" href="../resources/img/icon.png">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="../resources/css/core-style.css">
    <link rel="stylesheet" href="../resources/css/style.css">

</head>

<body>

<%-- Search wraper --%>
<jsp:include page="fragments/search-wraper.jsp"/>

<div class="main-content-wrapper d-flex clearfix">

    <!-- Mobile Nav (max width 767px)-->
    <jsp:include page="fragments/mobile-navigation.jsp"/>

    <%-- Header --%>
    <jsp:include page="fragments/header.jsp"/>

    <div class="products-catagories-area clearfix">
        <div class="amado-pro-catagory clearfix">
            <h1>Access denied</h1>
        </div>
    </div>
</div>

<%-- Footer--%>
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