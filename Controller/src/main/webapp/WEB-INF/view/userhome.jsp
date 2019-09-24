<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
	<head>
	
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
var arr=[];
arr.push(foo);
function cart()
{
var foo=document.getElementById("count").innerHTML;
foo++;
document.getElementById("count").innerHTML=foo;
}
</script>
	</head>
<body>
<c:forEach items="${productlist}" var="product">
<c:url value="cartdetails" var="gotocart"/>
 </c:forEach>

 <%String username=(String)session.getAttribute("username") ;
 out.println(username);
 %>
<c:url value="/resources/images/" var="image"/>
<div class="jumbotron text-center">
<h1>Shopping site</h1>
<div class="container">
<div class="dropdown" style="float:left;">
<label type="label" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"> Menu</label>
     <div class="dropdown-menu">
     <label> <a class="dropdown-item" href="#Account">Account</a></label><br>
     <label> <a class="dropdown-item" href="#Category">Category</a></label><br>
     <label> <a class="dropdown-item" href="#Offers">Offers</a></label><br>
     </div>
  </div>
  <div class="dropdown" style="float:left;">
			<label type="label" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"> Home</label>
			<div class="dropdown-menu">
			<label><a class="dropdown-item" href="#">About-us</a></label><br>
			<label><a class="dropdown-item" href="#">Contact-us</a></label><br>
			<label><a class="dropdown-item" href="#">News</a></label><br>
			</div>
			</div>
 <div class="row">
 <div class="col-xs-6">
 <div class="input-group">
 <input type="text" class="form-control"placeholder="Search"><span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
 </div>
</div>
        <label><a class="btn btn-info btn-sm"  href="userdetails">Sign-up</a></label>
		<label><a class="btn btn-info btn-sm"  href="Login" >Log-in</a></label>
		<label><a class="btn btn-info btn-sm"><span class="glyphicon glyphicon-map-marker"></span>Location</a></label>
		<label><a class="btn btn-info btn-sm"  href="cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart<label class="badge" id="count">${cartsize}</label> </a></label>	
		<label><a href="#" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-heart"></span> Wish-list</a></label>
</div>
	</div>
	<div class="container">
	</div></div>
<div class="container">
	<div class="row">
	
<c:forEach items="${productlist}" var="product" varStatus="vs">
			<div class="col-sm-3">
						<figure class="figure">
							<a href="#" data-toggle="modal" data-target="#myModal${vs.index}">
								<img src="${image}${product.id}.jpeg" class="rounded" height="200" width="250"/>
							</a>
								<center><figcaption class="figure-caption">${product.productName} </figcaption></center>
							<div class="modal fade" id="myModal${vs.index}" role="dialog">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
										<div>
											<br>
											<center>
												<img src="${image}${product.id}.jpeg" class="rounded" height="350" width="550"/>
											</center>
<%-- 											<center>${product.description}</center> --%>
													<div>
 <f:form method="post" action="addtocart" modelAttribute="myCart">
 <input type='hidden' name="email" value=<%=username%>/>
  <input type='hidden' name='productName' value='${product.productName}'/>
 <input type='hidden' name='productName' value='${product.id}'/>
 <input type='hidden' name='price' value='${product.price}'/>
  <input type='hidden' name='description' value='${product.description}'/>
 
<input type='submit' value='addtocart'/>
</f:form>
</div>
        
													</div>
													<div class="modal-footer">
															<span class="btn btn-default" data-dismiss="modal">close</span>
													</div>
													
											</div>
									</div>
								</div>
							</div>
						</figure>
					</c:forEach>	
			</div>
			

	</body>
</html>	