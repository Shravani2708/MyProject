<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<html>

<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 

 <!-- <style>
.container {
      padding: 15px 90px;
  }
   -->
 
<!-- </style>  -->
</head>



  <body> 
 <nav class="navbar navbar-inverse"> 
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ShopperStop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home">Home</a></li>
      <li > <a  href="aboutus">About Us</a> </li>
       <li><a href="contactus">Contact Us</a></li>
      <security:authorize access="hasRole('ADMIN')">
        <li><a href="${contextRoot}/category">Manage Category </a></li>
        <li><a href="${contextRoot}/supplier">Manage Supplier </a></li>
        <li><a href="${contextRoot}/product">Manage Product</a></li>
         <li><a href="${contextRoot}/productDisplay"> Display Product</a></li>
          
        </security:authorize>
        <security:authorize access="hasRole('USER')">
        <li><a href="${contextRoot}/productDisplay"> Display Product</a></li>
          
        </security:authorize>
      </ul>
      <ul class="nav navbar-nav navbar-right">
   <c:if test="${pageContext.request.userPrincipal.name  == null}">
        <li><a href="${contextRoot}/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${contextRoot}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="${contextRoot}/logoutSuccess"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li> 
 </c:if>  
        <security:authorize access="isAuthenticated()">
   <li><font color="purple"><strong>Welcome  <security:authentication property="principal.username" /></strong></font> </li>
    
          <li><a href="${contextRoot}/logoutSuccess"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li> 
        </security:authorize>
      </ul>
    </div>
  
 </nav>
 
 

</body>
</html>