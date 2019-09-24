<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/resources/images/" var="image"/>
Product details
<f:form method="post" action="addproduct" modelAttribute="addproduct" enctype="multipart/form-data">
<table>
<tr>
<td>
Enter productName
</td>
<td>
<f:input path="productName" value="${currproduct.productName}" />
</td>
</tr>
<tr>
<td>
Enter productid
</td>
<td>
<f:input path="id" value="${currproduct.id}" />
</td>
</tr>
<tr>
<td>
Enter price
</td>
<td>
<f:input path="price" value="${currproduct.price}"/>
</td>
</tr>
<tr>
<td>
Enter quantity
</td>
<td>
<f:input path="quantity" value="${currproduct.quantity}"/>
</td>
</tr>
<tr>
<td>
Enter description
</td>
<td>
<f:textarea path="description" value="${currproduct.description}"/>
</td>
</tr>
<tr>
<td>
Select categoryid
</td>
<td>
<f:input path="categoryid"/>
</td>
</tr>
<tr>
<td>
Select supplierid
</td>
<td>
<select name="supplierid">
<c:forEach items="${supplierlist}" var="supplier">
    <option value="${supplier.id}">
       ${supplier.supplierName}
    </option>
</c:forEach>
</select>
</td>
</tr>
<tr>
<td>
Select Product Image
</td>
<td>
<input type="file" name="image"/>
</td>
</tr>
</table>
<tr>
<td>
<input type='submit' value="save"/>
</td>
</tr>
</f:form>
<table border="2">
<th>
productName
</th>
<th>
id
</th>
<th>
price
</th>
<th>
quantity
</th>
<c:forEach items="${productlist}" var="product">
<tr>
<td>
${product.productName}
</td>
<td>
${product.id}
</td>
<td>
${product.price}
</td>
<td>
${product.quantity}
</td>
<td>
<img src="${image}${product.id}.jpeg" height="50" width="50"/>
</td>
<td>
<a href="Productdetails?id=${product.id}">edit</a>
</td>
<td>
<a href='deleteproduct?id=${product.id}'>delete</a>
</td>
</tr>

</c:forEach>
</table>

</body>
</html>