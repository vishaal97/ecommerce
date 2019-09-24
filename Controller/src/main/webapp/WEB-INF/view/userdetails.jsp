<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
	<meta name="viewport" content="width=device-width, initialscale=1.0">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script>
function validate(){
	
	
	
}


</script>
</head>
<body>
<div class="container" style="padding: 10% 30%" >
  <h2>Login</h2>
  <form action="addUser" name="signup" method="post">
  <div class="form-group">
      <label >UserName:</label>
      <input type="text" class="form-control"  placeholder="Enter name" name="userName" required>
    </div>
    <div class="form-group">
      <label >Email:</label>
      <input type="email" class="form-control"  placeholder="Enter email" name="email" required>
    </div>
    
<!--     <div class="form-check"> -->
<!--   <label class="form-check-label"> -->
<!--   <label >Gender:</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp -->
<!--     <input type="radio" class="form-check-input" name="male">male -->
<!--   </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp -->
<!--   <label class="form-check-label"> -->
<!--   <input type="radio" class="form-check-input" name="female">female -->
<!--   </label> -->
<!--   </div> -->
    <div class="form-group">
      <label >Password:</label>
      <input  type="password" class="form-control"  placeholder="Enter password" name="password" required>
    </div>
          <input type="hidden" name="user_role" value="ROLE_USER">
    
   
    <button type="submit" class="btn btn-default"  href "Login">signUp</button>
  </form>
  </div>

</body>
</html>