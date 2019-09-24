<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ADMIN</title>
</head>
<body>
   <nav>
      <table>
       <tr>
       <td>
       <c:url value="Productdetails" var="product"/>
       <c:url value="Supplierdetail" var="supplier"/>
       <c:url value="Categorydetails" var="category"/>
    <a href="${product}" >Product</a>  
       </td>
       <td>
        <a href="${category}">Category</a>
       </td>
       <td>
    <a href="${supplier}">Supplier</a>
       </td>
       </tr>
      </table>
   </nav>
</body>
</html>