<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="../../resources/img/favicon.png">

    <title>Book4read | Signup</title>

    <!-- Bootstrap CSS -->
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="../../resources/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="../../resources/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="../../resources/css/font-awesome.min.css" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="../../resources/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link href="../../resources/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="../../resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
    <!-- owl carousel -->
    <link rel="stylesheet" href="../../resources/css/owl.carousel.css" type="text/css">
    <link href="../../resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
    <link rel="stylesheet" href="../../resources/css/fullcalendar.css">
    <link href="../../resources/css/widgets.css" rel="stylesheet">
    <link href="../../resources/css/style.css" rel="stylesheet">
    <link href="../../resources/css/style-responsive.css" rel="stylesheet" />
    <link href="../../resources/css/xcharts.min.css" rel=" stylesheet">
    <link href="../../resources/css/jquery-ui-1.10.4.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="../../resources/js/html5shiv.js"></script>
    <script src="../../resources/js/respond.min.js"></script>
    <script src="../../resources/js/lte-ie7.js"></script>
    <![endif]-->

</head>
<body>
<section id="container" class="">
    <c:import url="../parts/header.jsp"/>
    <c:import url="../parts/sidebar.jsp"/>

        <section id="main-content">
            <section class="wrapper">

                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa fa-bars"></i> Sign up</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                            <li><i class="fa fa-bars"></i>Form</li>
                            <li><i class="fa fa-square-o"></i>Sign up</li>
                        </ol>
                    </div>
                </div>

                <!-- Form validations -->
                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                Registration
                            </header>
                            <div class="panel-body">
                                <div class="form">

                                    <form:form method="POST" modelAttribute="userForm" class="form-signin form-validate form-horizontal " id="register_form">

                                        <spring:bind path="email">
                                            <div class="form-group ">
                                                <label for="email" class="control-label col-lg-2">Email <span class="required">*</span></label>
                                                <div class="col-lg-4 ${status.error ? 'has-error' : ''}">
                                                    <form:input id="email" type="email" path="email" class="form-control" autofocus="true"/>
                                                    <form:errors path="email"/>
                                                </div>
                                            </div>
                                        </spring:bind>

                                        <spring:bind path="password">
                                            <div class="form-group ">
                                                <label for="password" class="control-label col-lg-2">Password <span class="required">*</span></label>
                                                <div class="col-lg-4 ${status.error ? 'has-error' : ''}">
                                                    <form:input id="password" type="password" path="password" class="form-control"/>
                                                    <form:errors path="password"/>
                                                </div>
                                            </div>
                                        </spring:bind>

                                        <div class="form-group ">
                                            <label for="confirm_password" class="control-label col-lg-2">Confirm Password <span class="required">*</span></label>
                                            <div class="col-lg-4">
                                                <input class="form-control " id="confirm_password" name="confirm_password" type="password" />
                                            </div>
                                        </div>

                                        <spring:bind path="firstName">
                                            <div class="form-group ">
                                                <label for="firstName" class="control-label col-lg-2">Your first name <span class="required">*</span></label>
                                                <div class="col-lg-4 ${status.error ? 'has-error' : ''}">
                                                    <form:input id="firstName" type="text" path="firstName" class="form-control"/>
                                                    <form:errors path="firstName"/>
                                                </div>
                                            </div>
                                        </spring:bind>

                                        <spring:bind path="lastName">
                                            <div class="form-group ">
                                                <label for="lastName" class="control-label col-lg-2">Your last name <span class="required">*</span></label>
                                                <div class="col-lg-4 ${status.error ? 'has-error' : ''}">
                                                    <form:input id="lastName" type="text" path="lastName" class="form-control"/>
                                                    <form:errors path="lastName"/>
                                                </div>
                                            </div>
                                        </spring:bind>

                                        <spring:bind path="birthday">
                                            <div class="form-group ">
                                                <label for="lastName" class="control-label col-lg-2">Your birthday <span class="required">*</span></label>
                                                <div class="col-lg-4 ${status.error ? 'has-error' : ''}">
                                                    <form:input id="lastName" type="date" path="birthday" class="form-control"/>
                                                    <form:errors path="birthday"/>
                                                </div>
                                            </div>
                                        </spring:bind>

                                        <spring:bind path="phone">
                                            <div class="form-group ">
                                                <label for="phone" class="control-label col-lg-2">Your phone </label>
                                                <div class="col-lg-4 ${status.error ? 'has-error' : ''}">
                                                    <form:input id="phone" type="number" path="phone" class="form-control"/>
                                                    <form:errors path="phone"/>
                                                </div>
                                            </div>
                                        </spring:bind>

                                        <div class="form-group ">
                                            <label for="agree" class="control-label col-lg-2 col-sm-3">Agree to Our Policy <span class="required">*</span></label>
                                            <div class="col-lg-10 col-sm-9">
                                                <input type="checkbox" style="width: 20px" class="checkbox form-control" id="agree" name="agree" />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-offset-2 col-lg-10">
                                                <button class="btn btn-primary" type="submit">Save</button>
                                                <a href="/" class="btn btn-default" type="button">Cancel</a>
                                            </div>
                                        </div>
                                    </form:form>

                                </div>
                            </div>
                        </section>
                    </div>
                </div>

            </section>
        </section>

</section>

<!-- javascripts -->
<script src="../../resources/js/jquery.js"></script>
<script src="../../resources/js/jquery-ui-1.10.4.min.js"></script>
<script src="../../resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../../resources/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="../../resources/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="../../resources/js/jquery.scrollTo.min.js"></script>
<script src="../../resources/js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="../../resources/assets/jquery-knob/js/jquery.knob.js"></script>
<script src="../../resources/js/jquery.sparkline.js" type="text/javascript"></script>
<script src="../../resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="../../resources/js/owl.carousel.js"></script>
<!-- jQuery full calendar -->
<<script src="../../resources/js/fullcalendar.min.js"></script>
<!-- Full Google Calendar - Calendar -->
<script src="../../resources/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="../../resources/js/calendar-custom.js"></script>
<script src="../../resources/js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="../../resources/js/jquery.customSelect.min.js"></script>
<script src="../../resources/assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="../../resources/js/scripts.js"></script>
<!-- custom script for this page-->
<script src="../../resources/js/sparkline-chart.js"></script>
<script src="../../resources/js/easy-pie-chart.js"></script>
<script src="../../resources/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../../resources/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="../../resources/js/xcharts.min.js"></script>
<script src="../../resources/js/jquery.autosize.min.js"></script>
<script src="../../resources/js/jquery.placeholder.min.js"></script>
<script src="../../resources/js/gdp-data.js"></script>
<script src="../../resources/js/morris.min.js"></script>
<script src="../../resources/js/sparklines.js"></script>
<script src="../../resources/js/charts.js"></script>
<script src="../../resources/js/jquery.slimscroll.min.js"></script>
<script src="../../resources/js/custom-knob-carousel.js"></script>


<!-- jquery validate js -->
<script type="text/javascript" src="../../resources/js/jquery.validate.min.js"></script>
<!-- custom form validation script for this page-->
<script src="../../resources/js/form-validation-script.js"></script>
<!--custome script for all page-->
<script src="../../resources/js/scripts.js"></script>

</body>