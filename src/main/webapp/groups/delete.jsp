<%@page import="com.storemanagement.entities.Privilege"%>
<%@page import="com.storemanagement.services.GroupService"%>
<%@page import="com.storemanagement.entities.SubGroup"%>
<%@page import="java.util.List"%>
<%@page import="com.storemanagement.entities.MainGroup"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<Privilege> privileges = (List<Privilege>) request.getSession().getAttribute("privileges");
if(!privileges.get(7).isDelete()) response.sendRedirect("/store-management-system/error");
else{
	int id = Integer.parseInt(request.getParameter("id"));
	MainGroup mainGroup = new MainGroup();
	mainGroup.setId(id);
	List<SubGroup> subGroups = GroupService.getSubGroupsFromMainGroup(mainGroup);
	if(subGroups.size() > 0) response.sendRedirect("/store-management-system/groups/delete-error.jsp");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>برنامج إدارة المبيعات | حذف مجموعة رئيسية</title>

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
                        <h3 class="panel-title">حذف مجموعة رئيسية</h3>
                    </div>
                    <div class="panel-body">
                        <form method="post" action="/store-management-system/groups">
                            <fieldset>
                                <div class="form-group">
                                	<p class="lead">هل انت متأكد من حذف هذه المجموعة ؟</p>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="hidden" name="id" value="<%= id %>" />
                                <input type="hidden" name="action" value="delete" />
                                <input type="submit" class="btn btn-danger" value="حذف" />
                                <a href="/store-management-system/groups"><button type="button" class="btn btn-default">الغاء</button></a>
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

<% } %>