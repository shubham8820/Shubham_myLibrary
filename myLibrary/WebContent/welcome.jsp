<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>

<style>
	.bluebar {
		  background-color:  #3366ff;
		  color: white;
		  padding: 16px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  width: 100%;
		  opacity: 0.9;
	}
	.greenbar {
		  background-color:  4dff4d;
		  color: black;
		  padding: 8px 10px;
		  margin: 4px 0;
		  border: none;
		  cursor: pointer;
		  width: 50%;
		  opacity: 0.9;
	}
	hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}


	

</style>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>

<body>
		<h1 class="bluebar">Welcome <%= request.getParameter("userName")%></h1>
		<hr>
		<hr>
		<h2 class="greenbar">Select Author </h2>
		
		<form action="servlet2" method="post" >
		
		<select name="aName">
		  <option value="Default">
		        Select Author's Name
		    </option>
		  <c:forEach items="${authors}" var="AuthorName">
		    <option value="${AuthorName}">
		        ${AuthorName}
		    </option>
		  </c:forEach>
		</select>
		<hr>
		<hr>
		<hr>
		<hr>
		<hr>
		<hr>
		<input class="bluebar" type="submit" value="search books"/> 
		</form>
		
		
		

</body>
</html>