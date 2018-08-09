<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      
    <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
    
 <html>
 <head>
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> 
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <style>
.carousel-inner img {
	width: 100%; /* Set width to 100% */
	margin: auto;
	min-height: 200px;
}
/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
}
img {
	height: 50%;
}
</style> -->
</head>

<body background="images/bg16.jpg">
	<div class="row">
		<div class="container">

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="images\index1.jpg" alt="index1" style="width: 100%;">
					</div>

					<div class="item">
						<img src="images\lappy2.jpg" alt="lappy2" style="width: 100%;">
					</div>

					<div class="item">
						<img src="images\index3.jpg" alt="index3" style="width: 100%;">
					</div>
					
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>

<div class="container">
    <div class="row">
		<div class="col-md-12">
                <div id="Carousel" class="carousel slide">
                 
                <ol class="carousel-indicators">
                    <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#Carousel" data-slide-to="1"></li>
                    
                </ol>
                 
                <!-- Carousel items -->
                <div class="carousel-inner">
                    
                <div class="item active">
                	<div class="row">
                	  <div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"> 
			<img src="images\Samsung chromebook.jpg">
			
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="<c:url value='/AddToCart/${product.productId}'/>">Good item name</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$1280</span>
					<del class="price-old">$1980</del>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
                	 <div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"> <img src="images\aboutus1.jpg">
		
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="<c:url value='/AddToCart/${product.productId}'/>">Best on sale</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$280</span>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
                	  <div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="images\lappy1.jpg"> 
		<a class="btn-overlay" href="#"><i class="fa fa-search-plus"></i> Quick view</a>
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="<c:url value='/AddToCart/${product.productId}'/>">product of Day</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$480</span>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="images\HP.jpg"> 
		
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="<c:url value='/AddToCart/${product.productId}'/>">Hp deal</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$180</span>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
                	  
                 
                <div class="item">
                	<div class="row">
                	<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="images\Lenovo Yoga.jpg"> 
		
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="<c:url value='/AddToCart/${product.productId}'/>">Lenovo</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$180</span>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
                	  
                		
                		
                		  <div class="item">
                	<div class="row">
                	<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="images\Aspire 5.jpg"> 
		
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="<c:url value='/AddToCart/${product.productId}'/>">Aspire 5</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$3000</span>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
                		
         <div class="item">
                	<div class="row">
                	<div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="images\Aspire 5.jpg"> 
		
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="<c:url value='/AddToCart/${product.productId}'/>">Mac Pro</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$500</span>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
     <div class="item">
 <div class="row">
     <div class="col-md-3">
	<figure class="card card-product">
		<div class="img-wrap"><img src="images\aboutus3.jpg"> 
		
		</div>
		<figcaption class="info-wrap">
			<h6 class="title text-dots"><a href="<c:url value='/AddToCart/${product.productId}'/>">Sony</a></h6>
			<div class="action-wrap">
				<a href="#" class="btn btn-primary btn-sm float-right"> Order </a>
				<div class="price-wrap h5">
					<span class="price-new">$600</span>
				</div> <!-- price-wrap.// -->
			</div> <!-- action-wrap -->
		</figcaption>
	</figure> <!-- card // -->
</div> <!-- col // -->
                           
                 
                </div><!--.carousel-inner-->
                  <a data-slide="prev" href="#Carousel" class="left carousel-control">‹</a>
                  <a data-slide="next" href="#Carousel" class="right carousel-control">›</a>
                </div><!--.Carousel-->
                 
		</div>
	</div>
</div><!--.container-->
    
			 

				

		<%--  <div class="row">
		<div class="container">

			<div class="row">
					<c:forEach items="${productDisplay}" var="product">
						<div class="col-md-4">
						
							<div class="thumbnail">
								<img src="<c:url value="images/${product.productId}.jpg"/>"
									width="150" height="100"></img>
								<div class="caption">
									<p>${product.productName}</p>
									<b><p>Rs:${product.price}</p></b>
									<p>
									 <c:if test="${pageContext.request.userPrincipal.name!= null}">
									 
								
										<a href="<c:url value='/AddToCart/${product.productId}'/>">
											<button class="btn btn-info" style="font-size: 48px">
												<i class="fa fa-shopping-cart" style="font-size: 16px"></i>
											</button>
										</a>
											 </c:if>
									</p>
								</div>
								
							</div>
						</div>
						</c:forEach>
					</div>
				</div>

			 --%>
					
	</body>
	</html>