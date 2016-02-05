<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<title>Add team page</title>
</head>
<body>
<div class="container-fluid">
<p><a href="${pageContext.request.contextPath}/index.html">Home page</a></p>
<div class="row text-center">

<h1 class="text-center"> Add team page</h1>
<p>Here you can add a new team.</p>
<form:form method="POST" commandName="team" action="${pageContext.request.contextPath}/team/add.html">
<div class="col-md-4">
Name:  <form:input path="name" /></div>
	<div class="col-md-4">

		Rating:  <form:input path="rating" />
	
	</div>
	<div class="col-md-4">
		<button type="submit" class="btn btn-success" >ADD</button>
		</div>


</form:form>



</div>
</div>

</body>
</html>