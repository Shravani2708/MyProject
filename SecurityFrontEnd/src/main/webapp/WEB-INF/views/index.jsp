<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      
    <c:set var="contextRoot" value="${pageContext.request.contextPath}" />
    
 <html>
 <head>
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
            <div class="row blog">
                <div class="col-md-12">
                    <div id="blogCarousel" class="carousel slide" data-ride="carousel">

                        <ol class="carousel-indicators">
                            <li data-target="#blogCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#blogCarousel" data-slide-to="1"></li>
                            <li data-target="#blogCarousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Carousel items -->
                        <div class="carousel-inner">

                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href="#">
                                            <img src="images\Mac pro.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                    </div>
                               <div class="col-md-3">
                                        <a href="#">
                                            <img src="images\Samsung chromebook.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                    </div>
  
                                    <div class="col-md-3">
                                        <a href="#">
                                            <img src="images\aboutus1.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#">
                                            <img src="images\HP.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                    </div>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div class="carousel-item">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href="#">
                                            <img src="images\lappy2.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#">
                                            <img src="images\aboutus2.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#">
                                            <img src="images\Sony.jsp" alt="Image" style="max-width:100%;">
                                        </a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#">
                                            <img src="images\index3.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                    </div>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                        </div>
                        <!--.carousel-inner-->
                    </div>
                    <!--.Carousel-->

                </div>
            </div>
</div>
                

				

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