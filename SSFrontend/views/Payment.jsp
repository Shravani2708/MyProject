<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="container">
<form action="<c:url value="/paymentProcess"/>" method="post"></form>
<table class="table" align="center" width="50">

<tr>
    <td colspan="2">Payment Option</td>
</tr>

<tr>
    <td colspan="2">
       <input type="radio" name="paymenttype" value="CC"/>Credit Card
       <input type="radio" name="paymenttype" value="CC"/>Cash On Delivery
       
</td>
</tr>
<tr>
    <td>Cart No:</td>
     <td> <input type="text" name="cardno" required/></td>
 </tr>
 
 <tr>
    <td>CVV</td>
     <td> <input type="text" name="cvv" required/></td>
 </tr>
 
 <tr>
    <td>Valid Upto</td>
     <td> <input type="text" name="valid" required/></td>
 </tr>
 
 <tr>
    <td colspan="2">
    <td> <input type="submit" name="payment" required/></td>
  </tr>
  </table>
  </div>
  
    
 
