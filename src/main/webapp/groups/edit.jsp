<%@page import="com.storemanagement.services.EntityService"%>
<%@page import="com.storemanagement.entities.MainGroup"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
MainGroup mainGroup = (MainGroup) EntityService.getObject(MainGroup.class, id);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>برنامج إدارة المبيعات | تعديل مجموعة رئيسية</title>

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
                        <h3 class="panel-title">تعديل المجموعة الرئيسية</h3>
                    </div>
                    <div class="panel-body">
                        <form method="post" action="/store-management/groups">
                            <fieldset>
                                <div class="form-group">
                                	<label for="group_name"></label>
                                    <input class="form-control" placeholder="اسم المجموعة الرئيسية" name="group_name" type="text" id="group_form" value="<%= mainGroup.getName() %>" autofocus required>
                                    <input type="hidden" name="id" value="<%= id %>" />
                                    <input type="hidden" name="action" value="edit" />
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class="btn btn-lg btn-primary btn-block" value="تعديل" />
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery Version 1.11.0 -->
    <script src="../js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

</body>

</html>