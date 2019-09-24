<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<title>Payment</title>
<meta name="viewport" content="width=device-width, initialscale=1.0">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
 <style>
#panel, #flip {
  padding: 5px;
  text-align: center;
  background-color:white;
 
}

#panel {
  padding: 50px;
   border: solid 1px #c3c3c3;
  display: none;
 
}</style>
<script>
$(document).ready(function(){
  $("#flip").click(function(){
    $("#panel").slideToggle("slow");
  });
});
</script>
</head>
<body>

<center>
<h1>PAYMENT DETAILS</h1>
Total amount: ${carttotal}
<%String username=(String)session.getAttribute("username") ; %>
Email:<%out.println(username); %>
</center>
<center>
<form method="post" action="add">
 <input type='hidden' name='total' value='${carttotal}'/>
<input type='hidden' name='cartid' value='${cartid}'/>

<table>

<tr>
<td>
Enter payment method :
<td><div id="flip">

<input type="radio" name="paymenttype" value="card" />CARD </div>
<div id="panel">
<input type='text' placeholder='CARD.NO'/>
<input type='text' placeholder='CCV' />
</div></div>
<input type="radio" name="paymenttype" value="Cash on Delivery" />CASH ON DELIVERY<br>
</td>
</tr>
<br>
<tr>
<td>
Enter  shipping Address
</td>
<td>
<input type="textarea" name="shippingaddress" required></td>
</tr>
</table><br><br>

 <c:url value="invoice" var="invoice"/>
<input type='submit' value='Pay' href='${invoice}'/> </td>
</center>
<%-- <% String cartid=(String)session.getAttribute("cartid");%> --%>

</form>
</body>
</html>

