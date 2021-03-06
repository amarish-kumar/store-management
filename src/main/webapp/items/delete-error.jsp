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

    <title>برنامج إدارة المبيعات | حذف صنف</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../css/sb-admin-2.css" rel="stylesheet">
	
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">حذف صنف</h3>
                    </div>
                    <div class="panel-body">
	                    <fieldset>
	                        <div class="form-group">
	                        	<p class="lead text-danger">عفوا لا يمكن حذف هذا الصنف لأنه تم التعامل معه فى الفواتير سابقا</p>
	                        </div>
	                        <a href="/store-management-system/items"><button type="button" class="btn btn-primary">رجوع</button></a>
	                    </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>