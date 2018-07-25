<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="container">
<table class="table">
<tr>
    <td>
        <td colspan="6"><center><h3>Receipt</h3></center></td>
 </tr>
 
 <tr>
    <td>
        <td colspan="2">Order ID</td>
        <td>ORD00${orderDetail.orderId}</td>
        <td colspan="2">Order Date</td>
        <td>${orderDetail.orderDate}</td>
 </tr>
 <tr>
    <td> SL #</td>
    <td> Product Name</td>
    <td> Quantiy</td>
    <td> Price</td>
    <td> Total Price</td>
    <td> Operation</td>
 </tr>
 
 
 <tr bgcolor="light blue">
 <c:if test="${empty cartitems }">
 <td colspan="6"> <center><h3>!!Cart is empty!!</h3></center></td>
 </c:if>
 <c:if test="${not empty cartItems}">
 <c:forEach items="${cartItems}" var="cartItem">
 <form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="get">
 <tr>
     <td>${cartItem.productName}</td>
     <td>"${cartItem.quantity}"/></td>
     <td>${cartItem.price}</td>
     <td>${cartItem.quantity*cartItem.price}</td>
     
  </tr>
  </form>
  </c:forEach>
  </c:if>
   
 <tr bgcolor="orange">
      <td colspan="4">Total Purchase Amount</td>
      <td colspan="4">INR.${ totalPurchaseAmount}/-</td>
  </tr>
  
  <tr bgcolor="cyan">
        <td colspan="6"><center><h4>Thanks for Shopping here..Have a good</h4></center></td>
   </tr>
 </table>
 </div>
      
 