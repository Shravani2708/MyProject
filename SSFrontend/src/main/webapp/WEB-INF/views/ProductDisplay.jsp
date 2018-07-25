<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include file="Header.jsp" %>
 <head>
 </head>
 

<c:forEach items="${productList}" var="product">
<div class="row">
     <div class="col-sn-6 col-nd-4">
        <div class="thumbnail">"
            <h4>
                 <b class="glyphicon glyphicon-star"></b> <span 
                 data-toggle="tooltip" title="Bootstrap version">3.0.3</span></h4>
                 
     
    
      < img src="<c:url value= "/resources/images/${product.productId}.jpg"/>" alt ="Image not supported" >
       
            <a href="http://bootsnipp.com/snippet/featured/post-thumbnail-list"
            class="btn btn-primary col-xs-12" role="button">Click for Large</a>
            <div class="clearfix"></div> 
      </div>
    </div>
  </c:forEach>
           
          
 
 
 </body>
 </html>