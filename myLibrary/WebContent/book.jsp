<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%@page import="java.util.*"%> 
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<head>
<meta charset="ISO-8859-1">
<title>book</title>
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
	hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
</style>
</head>
<body>
<h1> </h1>
<h1 class="bluebar">Showing Books by <%= request.getParameter("aName")%></h1>
<hr>
<table class="table table-striped">
	<h2 class ="bluebar">List of Books</h2>
	<c:forEach items="${temp}" var="bname">
	<tr>
		<td><c:out value="${bname}" /></td>
	</tr>
	</c:forEach>
</table>
<hr>


<FORM NAME="form1" METHOD="POST" Action="servlet1">
        <INPUT class="bluebar" TYPE="SUBMIT" NAME="submit" VALUE="RETRY">
 </FORM>
 <FORM NAME="form1" METHOD="POST" Action="end.jsp">
        <INPUT class="bluebar" TYPE="SUBMIT" NAME="submit" VALUE="EXIT">
 </FORM> 
 
 </body>
</html>