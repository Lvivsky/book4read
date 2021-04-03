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
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Profile | Book4read</title>

    <!-- Bootstrap CSS -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="../resources/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="../resources/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="../resources/css/font-awesome.min.css" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="../resources/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link href="../resources/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="../resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
    <!-- owl carousel -->
    <link rel="stylesheet" href="../resources/css/owl.carousel.css" type="text/css">
    <link href="../resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
    <link rel="stylesheet" href="../resources/css/fullcalendar.css">
    <link href="../resources/css/widgets.css" rel="stylesheet">
    <link href="../resources/css/style.css" rel="stylesheet">
    <link href="../resources/css/style-responsive.css" rel="stylesheet" />
    <link href="../resources/css/xcharts.min.css" rel=" stylesheet">
    <link href="../resources/css/jquery-ui-1.10.4.min.css" rel="stylesheet">

</head>

<body>
<section id="container" class="">
    <c:import url="parts/header.jsp"/>
    <c:import url="parts/sidebar.jsp"/>

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-user-md"></i> Profile</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="/">Home</a></li>
                        <li><i class="fa fa-user-md"></i>Profile</li>
                    </ol>
                </div>
            </div>
            <div class="row">
                <!-- profile-widget -->
                <div class="col-lg-12">
                    <div class="profile-widget profile-widget-info">
                        <div class="panel-body">
                            <div class="col-lg-2 col-sm-2">
                                <h4>${user.firstName} ${user.lastName}</h4>
                                <div class="follow-ava">
                                    <img src="img/profile-widget-avatar.jpg" alt="">
                                </div>
                                <h6>
                                    <c:if test="${user.authorRole}">Author</c:if>
                                    <c:if test="${!user.authorRole}">User</c:if>
                                </h6>
                            </div>
                            <div class="col-lg-4 col-sm-4 follow-info">
                                <c:if test="${empty user.status}"><p>Information about me is missed</p></c:if>
                                <c:if test="${!empty user.status}"><p>${user.status}</p></c:if>

                                <c:if test="${user.settings.showInstagram}">
                                    <c:if test="${empty user.instagramAccount}"><p>@none</p></c:if>
                                    <c:if test="${!empty user.instagramAccount}">
                                        <p>@<a href="https://www.instagram.com/${user.instagramAccount}" target="_blank">${user.instagramAccount}</a></p>
                                    </c:if>
                                </c:if>

                                <c:if test="${user.settings.showTwitter}">
                                    <c:if test="${empty user.twitterAccount}"><p><i class="fa fa-twitter">none</i></p></c:if>
                                    <c:if test="${!empty user.twitterAccount}">
                                        <p><i class="fa fa-twitter"><a href="https://www.twitter.com/${user.twitterAccount}" target="_blank">${user.twitterAccount}</a></i></p>
                                    </c:if>
                                </c:if>

                                <p><i class="fa fa-mail-forward"><a href="mailto:${user.email}">${user.email}</a></i></p>

                                <c:if test="${user.settings.showBirthday}">
                                    <h6><span><i class="icon_calendar"></i>${user.birthday}</span></h6>
                                </c:if>

                            </div>

                            <c:if test="${user.settings.showFollowers}">
                                <div class="col-lg-2 col-sm-6 follow-info weather-category">
                                    <ul>
                                        <li class="active">
                                            <a href="#" class="wht-color">
                                                Followers</br><i class="fa fa-user-o fa-2x float-left"></i> ${followingCount}
                                            </a>
                                        </li>

                                    </ul>
                                </div>
                            </c:if>

                            <c:if test="${user.settings.showFollowing}">
                                <div class="col-lg-2 col-sm-6 follow-info weather-category">
                                    <ul>
                                        <li class="active">
                                            <a href="#" class="wht-color">
                                                Following</br><i class="fa fa-user-o fa-2x float-left"></i> ${followingCount}
                                            </a>
                                        </li>

                                    </ul>
                                </div>
                            </c:if>


                        </div>
                    </div>
                </div>
            </div>
            <!-- page start-->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading tab-bg-info">
                            <ul class="nav nav-tabs">

                                <c:if test="${user.authorRole}">
                                    <li class="active">
                                        <a data-toggle="tab" href="#author">
                                            <i class="icon-user"></i>Author bio
                                        </a>
                                    </li>
                                </c:if>

                                <c:if test="${user.settings.showLikedBooksList}">
                                    <li class="">
                                        <a data-toggle="tab" href="#liked">
                                            <i class="icon-user"></i>Liked
                                        </a>
                                    </li>
                                </c:if>

                                <c:if test="${user.settings.showReadNowList}">
                                    <li class="">
                                        <a data-toggle="tab" href="#read-now">
                                            <i class="icon-envelope"></i>Read now
                                        </a>
                                    </li>
                                </c:if>

                                <c:if test="${user.settings.showReadLaterList}">
                                    <li class="">
                                        <a data-toggle="tab" href="#read-later">
                                            <i class="icon-envelope"></i>Read later
                                        </a>
                                    </li>
                                </c:if>

                                <c:if test="${user.settings.showReadAlreadyList}">
                                    <li class="">
                                        <a data-toggle="tab" href="#read-already">
                                            <i class="icon-envelope"></i>Read already
                                        </a>
                                    </li>
                                </c:if>

                            </ul>
                        </header>
                        <div class="panel-body">
                            <div class="tab-content">

                                <!-- is author -->
                                <c:if test="${user.authorRole}">
                                    <div id="author" class="tab-pane active">
                                        <section class="panel">
                                            <c:if test="${!empty user.description}">
                                                <div class="bio-graph-heading">
                                                        ${user.description}
                                                </div>
                                            </c:if>
                                            <div class="panel-body bio-graph-info">
                                                <h1>Bio Graph</h1>

                                            </div>
                                        </section>
                                        <section>
                                            <div class="row">

                                                <%-- Here mast be table --%>

                                            </div>
                                        </section>
                                    </div>
                                </c:if>

                                <!-- Liked list -->
                                <c:if test="${user.settings.showLikedBooksList}">
                                    <div id="liked" class="tab-pane">
                                        <section class="panel">
                                            <div class="panel-body bio-graph-info">
                                                <h1> Liked books </h1>


                                            </div>
                                        </section>
                                    </div>
                                </c:if>

                                <!-- Read now list -->
                                <c:if test="${user.settings.showReadNowList}">
                                    <div id="read-now" class="tab-pane">
                                        <section class="panel">
                                            <div class="panel-body bio-graph-info">
                                                <h1> Read now </h1>


                                            </div>
                                        </section>
                                    </div>
                                </c:if>


                                <!-- Read later list -->
                                <c:if test="${user.settings.showReadLaterList}">
                                    <div id="read-later" class="tab-pane">
                                        <section class="panel">
                                            <div class="panel-body bio-graph-info">
                                                <h1> Read later </h1>


                                            </div>
                                        </section>
                                    </div>
                                </c:if>

                                <!-- Read already list -->
                                <c:if test="${user.settings.showReadAlreadyList}">
                                    <div id="read-already" class="tab-pane">
                                        <section class="panel">
                                            <div class="panel-body bio-graph-info">
                                                <h1> Read already </h1>


                                            </div>
                                        </section>
                                    </div>
                                </c:if>

                            </div>
                        </div>
                    </section>
                </div>
            </div>

            <!-- page end-->
        </section>
    </section>
    <!--main content end-->





</section>

<!-- javascripts -->
<script src="../resources/js/jquery.js"></script>
<script src="../resources/js/jquery-ui-1.10.4.min.js"></script>
<script src="../resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../resources/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="../resources/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="../resources/js/jquery.scrollTo.min.js"></script>
<script src="../resources/js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="../resources/assets/jquery-knob/js/jquery.knob.js"></script>
<script src="../resources/js/jquery.sparkline.js" type="text/javascript"></script>
<script src="../resources/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="../resources/js/owl.carousel.js"></script>
<!-- jQuery full calendar -->
<<script src="../resources/js/fullcalendar.min.js"></script>
<!-- Full Google Calendar - Calendar -->
<script src="../resources/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="../resources/js/calendar-custom.js"></script>
<script src="../resources/js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="../resources/js/jquery.customSelect.min.js"></script>
<script src="../resources/assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="../resources/js/scripts.js"></script>
<!-- custom script for this page-->
<script src="../resources/js/sparkline-chart.js"></script>
<script src="../resources/js/easy-pie-chart.js"></script>
<script src="../resources/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../resources/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="../resources/js/xcharts.min.js"></script>
<script src="../resources/js/jquery.autosize.min.js"></script>
<script src="../resources/js/jquery.placeholder.min.js"></script>
<script src="../resources/js/gdp-data.js"></script>
<script src="../resources/js/morris.min.js"></script>
<script src="../resources/js/sparklines.js"></script>
<script src="../resources/js/charts.js"></script>
<script src="../resources/js/jquery.slimscroll.min.js"></script>
<script src="../resources/js/custom-knob-carousel.js"></script>
<!-- jquery validate js -->
<script type="text/javascript" src="../resources/js/jquery.validate.min.js"></script>
<!-- custom form validation script for this page-->
<script src="../resources/js/form-validation-script.js"></script>
<!--custome script for all page-->
<script src="../resources/js/scripts.js"></script>

</body>