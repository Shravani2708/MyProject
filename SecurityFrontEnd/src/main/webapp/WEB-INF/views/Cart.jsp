<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@include file="Header.jsp" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <html>
  <head>
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 </head>
  <body background="images/bg16.jpg">
  <section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">ShopperStop CART</h1>
     </div>
</section> 

<div class="container mb-4">
    <div class="row">
        <div class="col-12">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col"> </th>
                            <th scope="col">Product</th>
                            <th scope="col" class="text-center">Quantity</th>
                            <th scope="col">price </th>
                            <th scope="col">Total</th>
                             <th scope="col"></th>
                         </tr>
                    </thead>
                    <tbody>
<c:if test="${empty cartItems }">
 <td colspan="6"> <center><h3>!!Cart is empty!!</h3></center></td>
 </c:if>
 <c:if test="${not empty cartItems}">
<c:forEach items="${cartItems}" var="cartItem"> 


 <form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="GET">
 <tr>
    
     <td>${cartItem.productName}</td>
     <td><input type="number" value="${cartItem.quantity}"/></td>
     <td>${cartItem.price}</td>
     <td>${cartItem.quantity*cartItem.price}</td>
     <td>
     <td>
         <a href ="<c:url value='/deleteCartItem/${cartItem.cartItemId}'/>"><button class="btn btn-danger" style="font-size: 36px">
									<i class="fa fa-trash-o" style="font-size: 36px"></i>
								</button>
						</a>
          <a href ="<c:url value='/updateCartItem/${cartItem.cartItemId}'/>"><button class="btn btn-warning" style="font-size: 36px">
									<i class="fa fa-edit" style="font-size: 36px"></i>
								</button></a>
</td>
        
     </tr>
  </form>
  </c:forEach> 
  </c:if>  
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><strong>Total</strong></td>
                            <td class="text-right"><strong>${ totalPurchaseAmount}</strong></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col mb-2">
            <div class="row">
           <div class="col-sm-12  col-md-6"><a href="<c:url value="/continueShopping"/>" class="btn btn-block btn-light"> Continue Shopping</a>
                 
                </div>
                
            <div class="col-sm-12 col-md-6 text-right"><a href="<c:url value="/checkout"/>"  class="btn btn-lg btn-block btn-success text-uppercase">Checkout</a>
                
                    <!-- <button class="btn btn-lg btn-block btn-success text-uppercase">Checkout</button> -->
                </div>
            </div>
        </div>
    </div>
</div>
  
  <%@include file="Footer.jsp" %>    
      </body>
 </html>