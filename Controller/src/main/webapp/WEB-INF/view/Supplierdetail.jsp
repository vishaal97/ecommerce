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
Supplier details
<f:form method="post" action="addsupplier" modelAttribute="addsupplier">
<table>
<tr>
<td>
Enter id
</td>
<td>
<f:input path="id" value="${currsupplier.id}" />
</td>
</tr>
<tr>
<td>
Enter supplierName
</td>
<td>
<f:input path="supplierName" value="${currsupplier.supplierName}" />
</td>
</tr>
<tr>
<td>
Enter address
</td>
<td>
<f:input path="address" value="${currsupplier.address}"/>
</td>
</tr>

</table>
<tr>
<td>
<input type='submit' value="add"/>
</td>
</tr>
</f:form>
<table border="2">
<th>
id
</th>
<th>
supplierName
</th>
<th>
address
</th>
<c:forEach items="${supplierlist}" var="supplier">
<tr>
<td>
${supplier.id}
</td>
<td>
${supplier.supplierName}
</td>
<td>
${supplier.address}
</td>
<td>
<a href="Supplierdetail?id=${supplier.id}">edit</a>
</td>
<td>
<a href='deletesupplier?id=${supplier.id}'>delete</a>
</td>
</tr>

</c:forEach>
</table>

</body>
</html>