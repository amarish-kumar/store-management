<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>برنامج إدارة المبيعات | تسجيل الدخول</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">من فضلك سجل الدخول</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="/store-management-system/home" method="post">
                        	<% if(null != request.getAttribute("error")){ %>
						        <div class="alert alert-danger">
								  	<strong><%= request.getAttribute("error") %></strong>
								</div>
						    <% } %>
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="الاسم" name="name" type="text" autofocus required>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="الرقم السري" name="password" type="password" required>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class="btn btn-lg btn-success btn-block" value="تسجيل الدخول" />
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<div class="container" style="margin-top: 280px">
        <div class="footer text-center">
        	<hr />
        	<label>copyright &copy; <span><a href="http://usarabia-eg.com" target="_blank">Unlimited Solutions Arabia</a></span> - 01014713133</label>
        </div>
    </div>
</body>

</html>