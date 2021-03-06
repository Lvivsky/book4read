<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="forms" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

    <!-- Title  -->
    <title>Book4Read Authorization</title>

    <!-- Favicon  -->
    <link rel="icon" href="../../resources/img/icon.png">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="../../resources/css/core-style.css">
    <link rel="stylesheet" href="../../resources/css/style.css">

</head>

<body>
<!-- Search Wrapper -->
<jsp:include page="../fragments/search-wraper.jsp"/>

<!-- ##### Main Content Wrapper Start ##### -->
<div class="main-content-wrapper d-flex clearfix">

    <!-- Header Area Start -->
    <jsp:include page="../admin/admin-header.jsp"/>

    <div class="cart-table-area section-padding-100">
        <div class="container-fluid">
            <div class="row">


                <h1>Hello Admin</h1>


            </div>
        </div>
    </div>
</div>
<!-- ##### Main Content Wrapper End ##### -->



<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
<script src="../../resources/js/jquery/jquery-2.2.4.min.js"></script>
<!-- Popper js -->
<script src="../../resources/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="../../resources/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="../../resources/js/plugins.js"></script>
<!-- Active js -->
<script src="../../resources/js/active.js"></script>
<script src="../../resources/js/main/admin.js"></script>

</body>

</html>