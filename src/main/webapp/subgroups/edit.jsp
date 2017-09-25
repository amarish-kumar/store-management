<%@page import="com.storemanagement.entities.MainGroup"%>
<%@page import="java.util.List"%>
<%@page import="com.storemanagement.services.EntityService"%>
<%@page import="com.storemanagement.entities.SubGroup"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
SubGroup subGroup = (SubGroup) EntityService.getObject(SubGroup.class, id);
List<MainGroup> mainGroups = (List<MainGroup>) EntityService.getAllObjects(MainGroup.class);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>برنامج إدارة المبيعات | تعديل مجموعة فرعية</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="../css/font-awesome/font-awesome.min.css" rel="stylesheet" type="text/css">
	
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading" style="overflow: hidden;">
                        <h3 class="panel-title" style="float: right;">تعديل المجموعة الفرعية</h3>
                    	<a href="/store-management/subgroups" style="float: left;"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                    </div>
                    <div class="panel-body">
                        <form method="post" action="/store-management/subgroups">
                            <fieldset>
                            	<div class="form-group">
                            		<label for="mainGroups">اختر المجموعة الرئيسية</label>
	                        		<select class="form-control" name="mainGroups" id="mainGroups" required autofocus>
	                        			<% for(MainGroup mainGroup : mainGroups){ %>
	                        			<option value="<%= mainGroup.getId() %>" <%= subGroup.getMainGroup().getId() == mainGroup.getId() ? "selected" : "" %>><%= mainGroup.getName() %></option>
	                        			<% } %>
	                        		</select>
                            	</div>
                                <div class="form-group">
                                	<label for="subGroup_name">اسم المجموعة الفرعية</label>
                                    <input class="form-control" placeholder="اسم المجموعة الفرعية" name="subGroup_name" type="text" id="subGroup_name" value="<%= subGroup.getName() %>" required>
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