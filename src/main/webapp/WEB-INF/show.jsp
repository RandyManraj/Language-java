<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Information about ${langToShow.name}</h1>
	<h3>Name: ${langToShow.name }</h3>
	<h3>Creator: ${langToShow.creator }</h3>
	<h3>Version Number: ${langToShow.currentVersion }</h3>
	<h3>Created on: ${langToShow.createdAt }</h3>
	<h3>Updated on: ${langToShow.updatedAt }</h3>
	<button><a href="/languages">Home</a></button>
</body>
</html>