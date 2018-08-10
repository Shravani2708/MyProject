  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="Header.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <html>
  <head>
  
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">  
  
</head> 
  <body background="images/bg16.jpg">
  <c:url value='/ProductInsert/${product.productId}' var="addAction"></c:url>
  <form:form action="${addAction}" commandName="product" method="post" role="form" enctype="multipart/form-data">
 
 <table align="center" cellspacing="3" class="table">
 
 <tr bgcolor="yellow">
     <td colspan="2"><center>Product Manage</center></td>
 </tr>
 <tr>
 <td>Product Id</td>

 <%-- <c:choose> --%>
				<c:if test="${!empty product.productId}">

					<td><form:input path="productId" disabled="true" readonly="true" /></td>
				</c:if>
				<%-- <c:otherwise>
					<td><form:input path="productId" required="true"/></td>  
				</c:otherwise>
			</c:choose> --%>
			</tr>
 
 <tr>
     <td>Product Name</td>
     <td> <form:input path="productName"/></td>
 </tr>
 
 <tr>
     <td>Product Description</td>
     <td> <form:input path="productDesc"/></td>
 </tr>
 
 <tr>
     <td>Price</td>
     <td> <form:input path="price"/></td>
 </tr>
 
 <tr>
     <td>Stock</td>
     <td> <form:input path="stock"/></td>
 </tr>
 
 <tr>
     <td>Category</td>
     <td>
         <form:select path="categoryId">
         <form:option value="0" label="--Select list--"/>
         <form:options items="${categoryList}"/>
         </form:select>
      </td>   
 </tr>
 
  <tr>
     <td>Supplier</td>
     <td> <form:input path="supplierId"/></td>
 </tr>
 
  <tr>
     <td>Product Image</td>
     <td> <form:input type="file" path="pimage"/></td>
 </tr>
 
 <tr>
    
     <td colspan="2">
           <center><input type="submit"  value="Save" class="btn btn-info"/></center>
     </td>
     
      <%-- <td>           <center><input type="submit" value="Update" class="btn btn-info"/></center>
        <a input type="submit" "<c:url value='/updateProduct/${product.productId}' var="addAction" />" class="btn btn-info"></a> 
               
     </td> --%>
  </tr>
</table>
</form:form>
  
 
  
         
    
  <div class="container">
        <h2 style="color: #448aff;text-align: center;"> Product Table </h2>
<hr>
  <table class="table table-striped">
    <div class="dropdown">
      
     <!--  <a class="btn-top" style="margin-right: 15px;" href="#" class="btn btn-primary btn-success pull-right"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit All</a> -->
      <a class="btn-top" style="margin-right: 15px;" href="#" class="btn btn-primary btn-success pull-right"> <span class="glyphicon glyphicon-plus"></span> &nbsp Add Table</a>
  </div>
</div>
     <thead>
        <tr class="row-name">
           <th style="width:12%">Check/UnCheck</th>
           <th>Id</th>
           <th>Name</th>
           <th>Description</th>
           <th>Stock</th>
           <th>Price(In Rs)</th>
           <th>Category</th>
           <th>Supplier</th>
           <th>Setting</th>
           
        </tr>
     </thead>   
     <tbody>
        <tr class="row-content">
        <c:forEach items="${productList}" var="product">
           <th class="check" "> <label><input type="checkbox" value=""></label></th>
              <th>${product.productId}</th>
             <th>${product.productName}</th>
             <th>${product.productDesc}</th>
             <th>${product.price}</th>
             <th>${product.stock}</th>
             <th>${product.categoryId}</th>
             <th>${product.supplierId}</th>
           <td>
              <a class="btn btn-danger " href="<c:url value='/deleteProduct/${product.productId}'/>" aria-label="Settings">
                <i class="fa fa-trash" aria-hidden="true"></i>
              </a>
              &nbsp 
              <a class="btn btn-info edit" href="<c:url value='/editProduct/${product.productId}'/>" aria-label="Settings">
                <i class="fa fa-pencil-square-o" aria-hidden="true"></i> 
              
              

           </td>
        </tr>
       </tbody>
      </c:forEach>
  </table>
 </div>
  
  
 
  
  
 
  
 </body> 
 </html>
         