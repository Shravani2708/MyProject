<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="container">
<table class="table">
<tr>
    <td colspan="6"> <center><h3>Shopping Cart</h3></center></td>
</tr>
<tr>
    <td> SL #</td>
    <td> Product Name</td>
    <td> Quantiy</td>
    <td> Price</td>
    <td> Total Price</td>
    <td> Operation</td>
 </tr>
 <c:if test="${empty cartitems }">
 <td colspan="6"> <center><h3>!!Cart is empty!!</h3></center></td>
 </c:if>
 <c:if test="${not empty cartItems}">
 <c:forEach items="${cartItems}" var="cartItem">
 <form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="get">
 <tr>
     <td>${cartItem.productName}</td>
     <td><input type="text" value="${cartItem.quantity}"/></td>
     <td>${cartItem.price}</td>
     <td>${cartItem.quantity*cartItem.price}</td>
     <td>
        <input type="submit" value="Update" class="btn btn-info"/>
        <a href ="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>" class=""btn btn-danger"/>
     </td>
  </tr>
  </form>
  </c:forEach>
  <tr bgcolor="purple">
  
      <td colspan="4"> Total Purchase Amount</td>
      <td colspan="2">${totalPurchaseAmount}</td>
   </tr>
   
   <tr bgcolor="orange">
        <td colspan="3"><a href="<c:url value="/continueShopping"/> class="btn btn-info"> Continue Shopping</a></td>
        <td colspan="3"><a href="<c:url value="/checkout"/>" class="btn btn-info">Checkout</a></td>
   </tr>
   </c:if>
   </table>
   </div>
  