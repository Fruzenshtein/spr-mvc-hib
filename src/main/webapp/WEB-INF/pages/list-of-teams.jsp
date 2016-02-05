<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<title>List of teams</title>
</head>
<body>
<div class="container-fluid">
<div class="row">

<h1 class="header text-center">List of teams</h1>

<div class="col-md-12">
<p class="text-center">Here you can see the list of the teams, edit them, remove or update.</p>
<table class="table-hover" style="font-size: 25px">
<thead>
<tr>
<th >Id</th><th>Name</th><th >Rating</th><th>Actions</th>
</tr>
</thead>
<tbody>
<c:forEach var="team" items="${teams}">
<tr>
	<td class="col-sm-4 col-xs-4">${team.id}</td>
	<td class="col-sm-4 col-xs-4">${team.name}</td>
	<td class="col-sm-4 col-xs-4">${team.rating}</td>
	<td class="col-sm-4 col-xs-4" >
	<a href="${pageContext.request.contextPath}/team/edit/${team.id}.html" class="btn btn-primary btn-sm btn-block">Edit</a><br/>
	<a href="${pageContext.request.contextPath}/team/delete/${team.id}.html" class="btn btn-danger btn-sm btn-block">Delete</a><br/>
	</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
</div>
</div>
</body>
</html>