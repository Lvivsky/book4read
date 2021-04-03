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

    <title>Book4Read | Login Page</title>

    <!-- Bootstrap CSS -->
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="../../resources/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="../../resources/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="../../resources/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="../../resources/css/style.css" rel="stylesheet">
    <link href="../../resources/css/style-responsive.css" rel="stylesheet" />

    <%-- HTML5 shim and Respond.js IE8 support of HTML5 --%>
    <!--[if lt IE 9]>
    <script src="../../resources/js/html5shiv.js"></script>
    <script src="../../resources/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-img3-body">

<div class="container">

    <form:form cssClass="login-form">
        <div class="login-wrap">

            <p class="login-img"><i class="icon_lock_alt"></i></p>

            <div class="input-group">
                <span class="input-group-addon"><i class="icon_profile"></i></span>
                <input required name="username" type="email" class="form-control" placeholder="Email" id="email" autofocus>
            </div>

            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input required name="password" type="password" class="form-control" placeholder="Password" id="password">
            </div>

            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right"> Forgot Password?</span>
            </label>

            <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
            <a href="/signup" class="btn btn-info btn-lg btn-block" type="submit">Signup</a>
            <a href="/" class="btn btn-info btn-lg btn-block" type="submit">Cancel</a>
        </div>
    </form:form>
</div>


</body>

</html>
