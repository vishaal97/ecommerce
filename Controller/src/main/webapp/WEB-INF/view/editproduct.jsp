<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Product details
<f:form method="post" action="updateproduct" modelAttribute="addproduct" enctype="multipart/form-data">
<table>
<tr>
<td>
<f:input path="id" value="${currproduct.id}"/>

</td>
<td>
Enter productName
</td>
<td>
<f:input path="productName" value="${currproduct.productName}" />
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
<f:input path="supplierid"/>
</td>
</tr>
<tr>
<td>
Select Product Image
</td>
<td>
<input type="file" name="file"/>
</td>
</tr>
</table>
<tr>
<td>
<input type='submit' value="save"/>
</td>
</tr>
</f:form>
</body>
</html>