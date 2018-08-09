<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <html>
    <head>
     <%@include file="Header.jsp" %>
     </head>
<body background="images/bg16.jpg">
<div class="container">
<table class="table">
<tr>
    <td colspan="6"> <center><h3>Your Orders</h3></center></td>
</tr>
<tr>
    
    <td> Product Name</td>
    <td> Quantity</td>
    <td> Price</td>
    <td> Total Price</td>
    <td> Operation</td>
 </tr>
 <c:if test="${empty cartItems }">
 <td colspan="6"> <center><h3>!!Cart is empty!!</h3></center></td>
 </c:if>
 <c:if test="${not empty cartItems}">
 <c:forEach items="${cartItems}" var="cartItem">
 <form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="get">
 <tr>
     <td>${cartItem.productName}</td>
     <td><input type="text" value="${cartItem.quantity}" name="quantity"/></td>
     <td>${cartItem.price}</td>
     <td>${cartItem.quantity*cartItem.price}</td>
     <td>
        <input type="submit" value="Update" class="btn btn-info"/>
        <a href ="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class=""btn btn-danger"/>
     </td>
  </tr>
  </form>
  </c:forEach>
  <tr bgcolor="grey">
  
      <td colspan="4"> Total Purchase Amount</td>
      <td colspan="4">${totalPurchaseAmount}</td>
   </tr>
   
   <tr bgcolor="grey">
        <td colspan="4"><a href="<c:url value='/continueShopping'/>" class="btn btn-info"> Continue Shopping</a></td>
        <td colspan="4"><a href="<c:url value='/payment'/>" class="btn btn-info">Payment</a></td>
   </tr>
   </c:if>
   </table>
   </div>
   <%@include file="Footer.jsp" %>
   </body>
   </html>
  