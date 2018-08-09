<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <html>
 <head>
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body background="images/bg16.jpg">
<div class="container">
    <div class="row">
       <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
           <div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: 2018-08-24 ${orderData.orderDate} </em>
                    </p>
                    <p>
                        <em>Order ID: ORD00525 ${orderData.orderId}</em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>quantity</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:if test="${empty cartItem }">
 <td colspan="6"> <center><h3>!!Cart is empty!!</h3></center></td>
 </c:if>
 <c:if test="${not empty cartItem}">
<c:forEach items="${cartItem}" var="cartItem"> 
 
 <tr>
    
     <th>${cartItem.productName}</th>
     <th>${cartItem.quantity}</th>
     <th>${cartItem.price}</th>
     <th>${cartItem.quantity*cartItem.price}</th>
     
 </tr>
</form>
</c:forEach>
</c:if>
                      <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>INR.${ totalPurchaseAmount}/-</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
                <div><center>
                    <h5 style="color: rgb(140, 140, 140);">Thank you..Visit Again!</h5></center>
               </div>
            </div>
        </div>
    </div>
               
                
</body>
</html>