<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
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
Category id
<f:form method="post" action="updatecategory" modelAttribute="addcategory">
<table>
<tr>
<td>
<f:input path="id" value="${currcategory.id}"/>

</td>
<td>
Enter Category name
</td>
<td>
<f:input path="categoryName"/>
</td>
</tr>
<tr>
<td>
Enter Description
</td>
<td>
<f:textarea path="description"/>
</td>
</tr>
</table>
<tr>
<td>
<input type="submit" value="add"/>
</td>
</tr>
</f:form>
</body>
</html>