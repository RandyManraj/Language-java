<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Languages</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
    <h1>Hello Languages!</h1>

    <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Creator</th>
      <th scope="col">Version</th>
      <th scope="col">Actions</th>

    </tr>
  </thead>
  <tbody>
  <c:forEach items='${allLanguages}' var='x'>
    <tr>
      <td><c:out value='${x.id}'/></td>
      <td><a href="/languages/show/${x.id}"><c:out value='${x.name}'/></a></td>
      <td><c:out value='${x.creator}'/></td>
	  <td><c:out value='${x.currentVersion}'/></td>
	  <td><td><a href="/languages/edit/${x.id}">Edit</a> | <a href="/languages/delete/${x.id}">Delete</a></td>
	  

    </tr>
    </c:forEach>
    
  </tbody>
</table>



  
<h1>New Language</h1>
<form:form action="/languages" method="post" modelAttribute="language">
    <p >
        <form:label path="name">Title</form:label>
        <form:errors path="name"/>
        <form:input path="name" />
    </p>
    <p>
        <form:label path="creator">Creator</form:label>
        <form:errors path="creator"/>
        <form:textarea path="creator"/>
    </p>
    <p>
        <form:label path="currentVersion">Current Version</form:label>
        <form:errors path="currentVersion"/>
         <form:input type = "number" path="currentVersion" step="0.00001"/>
    </p>
 
    <input type="submit" value="Submit"/>
</form:form>    
  </div>
</body>
</html>