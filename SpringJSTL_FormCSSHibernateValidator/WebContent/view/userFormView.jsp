<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User form</title>


<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/files/css/style.css">
</head>
<body> 
<h4>Submit your info!</h4>
<hr/>
<form:form action="displayUserInfo" modelAttribute="usermodel">


Name: <form:input path="name" required="true" placeholder="Enter name"/>
		<p/>
		<form:errors path="name" cssStyle="color:red"></form:errors>
	   <p/>
Gender:	Male: <form:radiobutton path="gender" value="Male" required="true"/>
		Female:<form:radiobutton path="gender" value="Female" required="true"/>
       <p/>    
Country : <form:select path="country">
			<form:option value="Portugal" ></form:option>
			<form:option value="USA" label="United States America" ></form:option>
			<form:option value="Romania" ></form:option>
			<form:option value="Thailand"></form:option>
	
		  </form:select>
	   <p/>		  
Introduction:<form:textarea path="introduction"/>
	  <p/>
	  <form:errors path="introduction" cssStyle="color:red"></form:errors>
	  <p/>
Countries Visited:
	Romania: <form:checkbox path="visited" value="Romania"/>
	Serbia: <form:checkbox path="visited" value="Serbia"/>
	Hungary: <form:checkbox path="visited" value="Hungary"/>
	Germany: <form:checkbox path="visited" value="Germany"/>
	 <p/>
	 <p> 
	 Accept agreement:<form:checkbox path="" value="accept" required="true"/>
	 		
	 </p>
	   <input type="submit" value="Submit">
</form:form>
</body>
</html>
<%--
	MORE VALIDATIONS IN https://javaee.github.io/javaee-spec/javadocs/javax/validation/package-summary.html
	Dont forget to update on the model the @Annotations choose to the output required !!!


 --%>