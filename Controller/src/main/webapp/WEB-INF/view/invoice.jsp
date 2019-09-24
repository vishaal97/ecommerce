<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta charset="ISO-8859-1">
<title>INVOICE</title>
</head>
<body>
<c:url value="/resources/images/" var="image"/>

<center><h1>BILLING DETAILS</h1></center>
  <table class="table table-borderless">
   <thead class="table-dark">
   
   <th>Image</th>
   <th><center>Price</center></th>
 </thead></table>
<table class="table table-borderless">  
<c:forEach items="${cartlist}" var="cart">
<tr>
           <td>
           <img src="${image}${cart.productid}.jpeg" height="250px" width="250px"/>
         </td>
          <td>
           <h3> ${cart.price}</h3>
          <td> ${cart.id}
           </td>
           </tr>
</c:forEach></table>
<label><h1><center>Total amount :${carttotal}</center></h1> </label>
<c:forEach  items="${paymentlist}" var="payment">
<label><h1><center>Shipping Address :${payment.shippingaddress}</center></h1></label><br></c:forEach>  
<center><a type="submit"  class="btn btn-primary btn-lg"  href="#">Proceed</a></center>
</body>
</html>