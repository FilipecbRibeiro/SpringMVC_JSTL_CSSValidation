<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Info</title>

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/files/css/style.css">
</head>
<body>
<div inputmode="text">
   
<br/>

Name: ${usermodel.name} 
<br/>
Gender: ${usermodel.gender}
<br/>
Country : ${usermodel.country}
<br/>
Introduction : ${usermodel.introduction}
<br/>
<br/>
Contries visited:
<ul> 
<c:forEach var="run" items="${usermodel.visited}">
<li>${run}</li>
</c:forEach>
</ul>

</div>

</body>
</html>