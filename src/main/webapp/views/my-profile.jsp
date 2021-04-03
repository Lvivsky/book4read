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
                                <h6><a href="/user/${user.id}">Reference on this profile</a></h6>
                            </div>
                            <div class="col-lg-4 col-sm-4 follow-info">
                                <c:if test="${empty user.status}"><p>Information about me is missed</p></c:if>
                                <c:if test="${!empty user.status}"><p>${user.status}</p></c:if>

                                <c:if test="${empty user.instagramAccount}"><p>@none</p></c:if>
                                <c:if test="${!empty user.instagramAccount}">
                                    <p>@<a href="https://www.instagram.com/${user.instagramAccount}" target="_blank">${user.instagramAccount}</a></p>
                                </c:if>

                                <c:if test="${empty user.twitterAccount}"><p><i class="fa fa-twitter">none</i></p></c:if>
                                <c:if test="${!empty user.twitterAccount}">
                                    <p><i class="fa fa-twitter"><a href="https://www.twitter.com/${user.twitterAccount}" target="_blank">${user.twitterAccount}</a></i></p>
                                </c:if>

                                <p><i class="fa fa-mail-forward"><a href="mailto:${user.email}">${user.email}</a></i></p>

                                <h6>
                                    <span><i class="icon_clock_alt"></i>11:05 AM</span>
                                    <span><i class="icon_calendar"></i>${user.birthday}</span>
                                </h6>
                            </div>
                            <div class="col-lg-2 col-sm-6 follow-info weather-category">
                                <ul>
                                    <li class="active">

                                        <i class="fa fa-comments fa-2x"> </i><br> Contrary to popular belief, Lorem Ipsum is not simply
                                    </li>

                                </ul>
                            </div>
                            <div class="col-lg-2 col-sm-6 follow-info weather-category">
                                <ul>
                                    <li class="active">

                                        <i class="fa fa-bell fa-2x"> </i><br> Contrary to popular belief, Lorem Ipsum is not simply
                                    </li>

                                </ul>
                            </div>
                            <div class="col-lg-2 col-sm-6 follow-info weather-category">
                                <ul>
                                    <li class="active">

                                        <i class="fa fa-tachometer fa-2x"> </i><br> Contrary to popular belief, Lorem Ipsum is not simply
                                    </li>

                                </ul>
                            </div>

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

                                <li class="active">
                                    <a data-toggle="tab" href="#profile">
                                        <i class="icon-user"></i>
                                        Profile
                                    </a>
                                </li>
                                <li class="">
                                    <a data-toggle="tab" href="#edit-profile">
                                        <i class="icon-envelope"></i>
                                        Edit Profile
                                    </a>
                                </li>
                                <li class="">
                                    <a data-toggle="tab" href="#settings-profile">
                                        <i class="icon-envelope"></i>
                                        Settings
                                    </a>
                                </li>
                            </ul>
                        </header>
                        <div class="panel-body">
                            <div class="tab-content">

                                <!-- profile -->
                                <div id="profile" class="tab-pane active">
                                    <section class="panel">
                                        <div class="bio-graph-heading">
                                            <c:if test="${empty user.description}">Description is empty</c:if>
                                            <c:if test="${!empty user.description}">${user.description}</c:if>
                                        </div>
                                        <div class="panel-body bio-graph-info">
                                            <h1>Bio Graph</h1>
                                            <div class="row">
                                                <div class="bio-row">
                                                    <p><span>First Name </span>: ${user.firstName} </p>
                                                </div>
                                                <div class="bio-row">
                                                    <p><span>Last Name </span>: ${user.lastName}</p>
                                                </div>
                                                <div class="bio-row">
                                                    <p><span>Birthday</span>: ${user.birthday}</p>
                                                </div>
                                                <div class="bio-row">
                                                    <p><span>Registration </span>: ${user.registrationTime}</p>
                                                </div>
                                                <div class="bio-row">
                                                    <p><span>Permission </span>: ${user.role}</p>
                                                </div>
                                                <div class="bio-row">
                                                    <p><span>Email </span>: ${user.email}</p>
                                                </div>
                                                <div class="bio-row">
                                                    <c:if test="${empty user.phone}"><p><span>Phone </span> none</p></c:if>
                                                    <c:if test="${!empty user.phone}"><p><span>Phone </span>: ${user.phone}</p></c:if>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <section>
                                        <div class="row">
                                        </div>
                                    </section>
                                </div>
                                <!-- edit-profile -->
                                <div id="edit-profile" class="tab-pane">
                                    <section class="panel">
                                        <div class="panel-body bio-graph-info">
                                            <h1> You can edit that you want </h1>

                                            <form:form action="/profile/edit/fields" method="POST" modelAttribute="newUserData" class="form-signin form-validate form-horizontal">

                                                <spring:bind path="status">
                                                    <div class="form-group ">
                                                        <label for="status" class="control-label col-lg-2">Status </label>
                                                        <div class="col-lg-6 ${status.error ? 'has-error' : ''}">
                                                            <form:input id="status" type="text" path="status" class="form-control" maxlength="100"/>
                                                            <form:errors path="status"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <c:if test="${user.authorRole}">
                                                    <spring:bind path="description">
                                                        <div class="form-group ">
                                                            <label for="description" class="control-label col-lg-2">Description </label>
                                                            <div class="col-lg-10 ${status.error ? 'has-error' : ''}">
                                                                <form:textarea path="description" id="description" type="text" cssClass="form-control" cols="30" rows="5" />
                                                            </div>
                                                        </div>
                                                    </spring:bind>
                                                </c:if>

                                                <spring:bind path="firstName">
                                                    <div class="form-group ">
                                                        <label for="firstName" class="control-label col-lg-2">First name </label>
                                                        <div class="col-lg-6 ${status.error ? 'has-error' : ''}">
                                                            <form:input id="firstName" type="text" path="firstName" class="form-control"/>
                                                            <form:errors path="firstName"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <spring:bind path="lastName">
                                                    <div class="form-group ">
                                                        <label for="lastName" class="control-label col-lg-2">Last name </label>
                                                        <div class="col-lg-6 ${status.error ? 'has-error' : ''}">
                                                            <form:input id="lastName" type="text" path="lastName" class="form-control"/>
                                                            <form:errors path="lastName"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>


                                                <spring:bind path="password">
                                                    <div class="form-group ">
                                                        <label for="password2" class="control-label col-lg-2">Password </label>
                                                        <div class="col-lg-6 ${status.error ? 'has-error' : ''}">
                                                            <form:input id="password2" type="password" path="password" class="form-control"/>
                                                            <form:errors path="password"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <div class="form-group ">
                                                    <label for="confirm_password2" class="control-label col-lg-2">Confirm Password </label>
                                                    <div class="col-lg-6">
                                                        <input class="form-control " id="confirm_password2" name="confirm_password" type="password" />
                                                    </div>
                                                </div>


                                                <spring:bind path="birthday">
                                                    <div class="form-group ">
                                                        <label for="lastName" class="control-label col-lg-2">Birthday</label>
                                                        <div class="col-lg-4 ${status.error ? 'has-error' : ''}">
                                                            <form:input id="lastName" type="date" path="birthday" class="form-control"/>
                                                            <form:errors path="birthday"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <spring:bind path="phone">
                                                    <div class="form-group ">
                                                        <label for="phone" class="control-label col-lg-2">Phone number </label>
                                                        <div class="col-lg-6 ${status.error ? 'has-error' : ''}">
                                                            <form:input id="phone" type="number" path="phone" class="form-control"/>
                                                            <form:errors path="phone"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>


                                                <spring:bind path="instagramAccount">
                                                    <div class="form-group ">
                                                        <label for="instagramAccount" class="control-label col-lg-2">Instagram </label>
                                                        <div class="col-lg-6 ${status.error ? 'has-error' : ''}">
                                                            <form:input id="instagramAccount" type="text" path="instagramAccount" class="form-control" placeholder="only username without @"/>
                                                            <form:errors path="instagramAccount"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <spring:bind path="twitterAccount">
                                                    <div class="form-group ">
                                                        <label for="twitterAccount" class="control-label col-lg-2">Twitter </label>
                                                        <div class="col-lg-6 ${status.error ? 'has-error' : ''}">
                                                            <form:input id="twitterAccount" type="text" path="twitterAccount" class="form-control" placeholder="only username"/>
                                                            <form:errors path="twitterAccount"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <div class="form-group">
                                                    <div class="col-lg-offset-2 col-lg-10">
                                                        <button class="btn btn-primary" type="submit">Save</button>
                                                    </div>
                                                </div>
                                            </form:form>
                                        </div>
                                    </section>
                                </div>
                                <!-- settings-profile -->
                                <div id="settings-profile" class="tab-pane">
                                    <section class="panel">
                                        <div class="panel-body bio-graph-info">
                                            <h1> What will be displayed on your profile</h1>

                                            <form:form action="/profile/edit/settings" method="POST" modelAttribute="settings" class="form-horizontal">

                                                <spring:bind path="showInstagram">
                                                    <div class="form-group ">
                                                        <label for="showInstagram" class="control-label col-lg-2">Show Instagram </label>
                                                        <div class="col-lg-2 ${status.error ? 'has-error' : ''}">
                                                            <form:checkbox cheked="${settings.showInstagram}" id="showInstagram" path="showInstagram" class="form-control"/>
                                                            <form:errors path="showInstagram"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <spring:bind path="showTwitter">
                                                    <div class="form-group ">
                                                        <label for="showTwitter" class="control-label col-lg-2">Show Twitter </label>
                                                        <div class="col-lg-2 ${status.error ? 'has-error' : ''}">
                                                            <form:checkbox cheked="${settings.showTwitter}" id="showTwitter" path="showTwitter" class="form-control"/>
                                                            <form:errors path="showTwitter"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <spring:bind path="showBirthday">
                                                    <div class="form-group ">
                                                        <label for="showBirthday" class="control-label col-lg-2">Show birthday </label>
                                                        <div class="col-lg-2 ${status.error ? 'has-error' : ''}">
                                                            <form:checkbox cheked="${settings.showBirthday}" id="showBirthday" path="showBirthday" class="form-control"/>
                                                            <form:errors path="showBirthday"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <spring:bind path="showLikedBooksList">
                                                    <div class="form-group ">
                                                        <label for="showLikedBooksList" class="control-label col-lg-2">Show your liked books </label>
                                                        <div class="col-lg-2${status.error ? 'has-error' : ''}">
                                                            <form:checkbox cheked="${settings.showLikedBooksList}" id="showLikedBooksList" path="showLikedBooksList" class="form-control"/>
                                                            <form:errors path="showLikedBooksList"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <spring:bind path="showReadNowList">
                                                    <div class="form-group ">
                                                        <label for="showReadNowList" class="control-label col-lg-2">What books you read now </label>
                                                        <div class="col-lg-2 ${status.error ? 'has-error' : ''}">
                                                            <form:checkbox cheked="${settings.showReadNowList}" id="showReadNowList" path="showReadNowList" class="form-control"/>
                                                            <form:errors path="showReadNowList"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <spring:bind path="showReadLaterList">
                                                    <div class="form-group ">
                                                        <label for="showReadLaterList" class="control-label col-lg-2">Read late list </label>
                                                        <div class="col-lg-2 ${status.error ? 'has-error' : ''}">
                                                            <form:checkbox cheked="${settings.showReadLaterList}" id="showReadLaterList" path="showReadLaterList" class="form-control"/>
                                                            <form:errors path="showReadLaterList"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <spring:bind path="showReadAlreadyList">
                                                    <div class="form-group ">
                                                        <label for="showReadAlreadyList" class="control-label col-lg-2">Read already list </label>
                                                        <div class="col-lg-2 ${status.error ? 'has-error' : ''}">
                                                            <form:checkbox cheked="${settings.showReadAlreadyList}" id="showReadAlreadyList" path="showReadAlreadyList" class="form-control"/>
                                                            <form:errors path="showReadAlreadyList"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <spring:bind path="showFollowers">
                                                    <div class="form-group ">
                                                        <label for="showFollowers" class="control-label col-lg-2">Followers </label>
                                                        <div class="col-lg-2 ${status.error ? 'has-error' : ''}">
                                                            <form:checkbox cheked="${settings.showFollowers}" id="showFollowers" path="showFollowers" class="form-control"/>
                                                            <form:errors path="showFollowers"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <spring:bind path="showFollowing">
                                                    <div class="form-group ">
                                                        <label for="showFollowing" class="control-label col-lg-2">Following </label>
                                                        <div class="col-lg-2 ${status.error ? 'has-error' : ''}">
                                                            <form:checkbox cheked="${settings.showFollowing}" id="showFollowing" path="showFollowing" class="form-control"/>
                                                            <form:errors path="showFollowing"/>
                                                        </div>
                                                    </div>
                                                </spring:bind>

                                                <div class="form-group">
                                                    <div class="col-lg-offset-2 col-lg-10">
                                                        <input class="btn btn-primary" type="submit" value="Save"/>
                                                    </div>
                                                </div>

                                            </form:form>

                                        </div>
                                    </section>
                                </div>
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