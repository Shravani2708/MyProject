<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 <html>
 <head>

<title>Display</title>
 
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 
</head>
 <body background="images/bg16.jpg">
  <%@ include file ="Header.jsp"  %>
 
 




<div class="row">
	
 <c:forEach items="${productList}" var="product">

     <div class="col-md-4 col-md-4">
        <div class="thumbnail">"
            
                 
         
            
        <img src="<c:url value="/images/${product.productId}.jpg"/>"  height="300" width="300"  alt="image not supported">
             <a href="<c:url value="/totalProductInfo/${product.productId}"/>" class="btn btn-primary col-xs-12" role="button">Click for Large</a>
            <div class="clearfix"></div> 
            </div>
         </div>
      
  </c:forEach>
</div> 
</div>
<%@include file="Footer.jsp" %> 
  </body>
 </html>
           
          
 
 
 