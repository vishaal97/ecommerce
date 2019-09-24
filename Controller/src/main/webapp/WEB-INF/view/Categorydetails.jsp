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
Category details
<f:form method="post" action="addcategory" modelAttribute="addcategory">
<table>
<tr>
<td>
Enter id
</td>
<td>
<f:input path="id" value="${currcategory.id}" />
</td>
</tr>
<tr>
<td>
Enter categoryName
</td>
<td>
<f:input path="categoryName" value="${currcategory.categoryName}" />
</td>
</tr>
<tr>
<td>
Enter description
</td>
<td>
<f:input path="description" value="${currcategory.description}"/>
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
categoryName
</th>
<th>
desciption
</th>
<c:forEach items="${categorylist}" var="category">
<tr>
<td>
${category.id}
</td>
<td>
${category.categoryName}
</td>
<td>
${category.description}
</td>
<td>
<a href="Categorydetails?id=${category.id}">edit</a>
</td>
<td>
<a href='deletecategory?id=${category.id}'>delete</a>
</td>
</tr>

</c:forEach>
</table>

</body>
</html>