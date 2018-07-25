
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
<head>

<style>
#mycontainer
{
background-color:orange;
}
</style>
<head>

<body>



<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ShopperStop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
    <form class="navbar-form navbar-left" action="/action_page.php">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
    <ul class="nav navbar-nav navbar-right">
    <c:if test="${sessionScope.loggedIn} ">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      <c:if test="${sessionScope.loggedIn} ">
           <c:if test="${sessionScope.role --'ROLE_ADMIN'}">
              <li><a href="category">Manage Category</a></li>
              <li><a href="product">Manage Product</a></li>
           </c:if>
           <c:if test="${sessionScope.role --'ROLE_USER'}">
           <li><a href="productDisplay">Display Product</a></li>
           </c:if>
       </c:if>
    </ul>
  </div>
</nav>



</body>
</html>