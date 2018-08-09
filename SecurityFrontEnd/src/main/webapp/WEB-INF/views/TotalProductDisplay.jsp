<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body background="images/bg16.jpg">
  <%@ include file ="Header.jsp"  %>


	
<div class="card">
	<div class="row">
		<aside class="col-sm-5 border-right">
<article class="gallery-wrap"> 
<div class="img-big-wrap">
   <div class="container">

   
<tr>
    <td rowspan="9">
             <img src="<c:url value= "/images/${product.productId}.jpg"/>" width="350" height="350">
            
     </td>
 
</div> <!-- slider-product.// -->

</article> <!-- gallery-wrap .end// -->
		</aside>
		<aside class="col-sm-7">
<article class="card-body p-5">
    <h2 class="title mb-3">${product.productName}</h2>
	
	<h4 class="title mb-3">Product Id</h4>
	<p>${product.productId}</p>

<p class="price-detail-wrap"> 
	<span class="price h3 text-warning"> 
		<span class="currency">Rs:</span><span class="num">${product.price}/-</span>
	</span> 
	
</p> <!-- price-detail-wrap .// -->
<dl class="item-property">
  <dt>Description</dt>
  <dd><p>${product.productDesc} </p></dd>
</dl>
<dl class="param param-feature">
  <dt>Stock</dt>
  <dd>${product.stock}</dd>
</dl>  <!-- item-property-hor .// -->
<dl class="param param-feature">
  <dt>Category</dt>
  <dd>${categoryName}</dd>
</dl>  <!-- item-property-hor .// -->
<dl class="param param-feature">
  <dt>SupplierId</dt>
  <dd>${product.supplierId}</dd>
</dl>  <!-- item-property-hor .// -->
<dl class="param param-feature">
  <dt>Delivery</dt>
  <dd>India,Russia, USA, and Europe</dd>
</dl>  <!-- item-property-hor .// -->
<form action="<c:url value= "/cart/${product.productId}"/>" method="get">
<hr>
	<div class="row">
		<div class="col-sm-5">
			<dl class="param param-inline">
			  <dt>Quantity: </dt>
			  <dd>
			  	<select class="form-control form-control-sm" name="quantity" style="width:70px;">
			  		<option> 1 </option>
			  		<option> 2 </option>
			  		<option> 3 </option>
			  		<option> 4 </option>
			  		<option> 5 </option>
			  		
			  	</select>
			  </dd>
			</dl>  <!-- item-property .// -->
		</div> <!-- col.// -->
		<div class="col-sm-7">
			<dl class="param param-inline">
				  <dt>Storage: </dt>
				  <dd>
				  	<label class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <span class="form-check-label">32GB</span>
					</label>
					<label class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <span class="form-check-label">64GB</span>
					</label>
					<label class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <span class="form-check-label">128GB</span>
					</label>
				  </dd>
			</dl>  <!-- item-property .// -->
		</div> <!-- col.// -->
	</div> <!-- row.// -->
	
	<hr>
	<!-- <a href="#" class="btn btn-lg btn-primary text-uppercase"> Buy now </a> -->
	<input type="submit" value="Add To Cart" class="btn btn-lg btn-outline-primary text-uppercase"> <i class="fas fa-shopping-cart"></i>  </a>
</article> <!-- card-body.// -->
		</aside> <!-- col.// -->
	</div> <!-- row.// -->
</div> <!-- card.// -->

</form>
</div>

</body>
</html>

