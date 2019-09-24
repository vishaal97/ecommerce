<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>LOG-IN</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style>
#dio{
text-align:center;
padding:200px;
}
</style>
<script>
class user{

}
function validate()
{
var login=document.forms["myformobject"]["username"].value;
var passwordtext=document.forms["myformobject"]["passwordtext"].value;
console.log(login)
console.log(passwordtext)
if (login==null || login=="")
{  
  alert("Name can't be blank");  
  return false;  
}
else if(passwordtext.length<8)
{  
  alert("Password must be at least 8 characters long.");  
  return false;  
}  
}
</script>
</head>
<body>
<div id="dio">
<form method="post" action='/Controller/j_spring_security_check' name='myformobject'>
<div class="col-xs-10">
<label>Enter Username<input type="text" class="form-control"  name="j_username" required></label>
<br>
<label>Enter password:<input type="password" class="form-control" name='j_password' required/></label><br><br><p>*Password must contain atleast 8 characteristics with uppercase,lowercase.*</p>
<br>
<button class="btn btn-primary" type="submit"href="${userhome}" />LOG-IN</button>
<button><a class="btn btn-primary" href="${userdetails}">Signup</button></a>
</div>
</form>
</div>
</body>
</html>