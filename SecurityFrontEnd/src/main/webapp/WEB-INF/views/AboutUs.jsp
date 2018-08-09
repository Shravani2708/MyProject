<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html lang="en">
<head>
  
  <title>About us</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <script src="/scripts/jquery.min.js"></script>
   <script src="/bootstrap/js/bootstrap.min.js"></script>
</head>
  <style>
 
  .bg-1 { 
      background-color: #1abc9c;
      color: #ffffff;
  }
  .bg-2 { 
      background-color: #474e5d;
      color: #ffffff;
  }
  .bg-3 { 
      background-color: #ffffff;
      color: #555555;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  </style>
</head>
<body>
 <%@include file="Header.jsp" %>

<div class="container-fluid bg-1 text-center">
  <h2>ShopperStop</h2>
  <br>
  <br>
  <div class = "row">
   <div class="col-md-3">
   <a href = "#" class = "thumbnail">
   <p class="title">Answers</p>
  <img src="images\Answers.jpg" alt="Generic placeholder thumbnail">
   </a>
   <p class="info">Get answers fast!<br/>Stop searching elsewhere, find the best answer to your question right here.</p>
    </div>
    
    <!-- <div class="col-sm-6 col-md-3">
        <a href = "#" class = "thumbnail">
    <p class="title">connection</p>
     <img src="images\connect.jpg" alt="Generic placeholder thumbnail">
     </a>
     <p class="info">You want to hear from fellow Fans like yourself. Get in touch and know more about Us.</p>
    </div>
     -->
    <div class="col-sm-6 col-md-3">
        <a href = "#" class = "thumbnail">
    <p class="title">Discussions</p>
    <img src="images\Discussions.jpg" alt="Generic placeholder thumbnail">
     </a>
     <p class="info">People love using our forum to give helpful advice because sharing is caring.</p>
      </div>
        
            <div class="clear"></div>
      
     
  
</div>
<h3>Be Different.Just like Us</h3>
</div>




<div class="container-fluid bg-2 text-center">
  <h3>Are u shopaholic ?</h3>
  <p> ShopperStop remains with you step-by-step in the buying your favourite cool stuffs from  online store, helping meet your every need. . 
   The multi-store feature helps you manage multiple online stores from a single location.  </p>
  <a href="#" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-search"></span> Search
  </a>
</div>

<div class="container-fluid bg-3 text-center">    
  <h3>Gadgets you love to own?</h3><br>
  <div class="row">
    <div class="col-sm-4">
      
      <img src="images\aboutus1.jpg" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      
      <img src="images\aboutus2.jpg" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
     
      <img src="images\aboutus3.jpg" class="img-responsive" style="width:100%" alt="Image">
    </div>
  </div>
</div>
  <%@include file="Footer.jsp" %>

</body>
</html>
