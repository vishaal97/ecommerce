<!-- <!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
body{
    /* font-color: green; */
    background-image: url("resources/1.jpg");
}
</style>
</script>
<body>
{{message}}
<span style="color:red;">{{error.message}}</span>
<span style="color:red;">{{logoutSuccess}}</span>
<div class="container">
<br><br>
<form name="loginForm" >
<br><br><br>
<div class="form-group">
<font color="#36C331" size="5px"><label style="position:absolute;top:165px;left:335px">Enter Username </label></font><br>
<center><input id="txtusername" type="text" ng-model="user.username" class="form-control" style="width:500px; height:35px;" required="Please fill the text"></center>
<p ng-show="loginForm.username.$invalid && loginForm.username.$dirty" style="color:red"> Username cannot be blank</p>
</div>
<div class="form-group">
<font color="#36C331" size="5px"><label style="position:absolute;top:250px;left:335px">Enter password</label> </font><br>
 <center><input type="password" id="txtpassword" ng-model="user.password" class="form-control" style="width:500px; height:35px;" required=""></center>
<p ng-show="loginForm.password.$invalid && loginForm.username.$dirty" style="color:red"> Paasword cannot be blank</p>
</div>
<div class="form-group">
<input type="submit" ng-click="validateUser()">
<button style="position:absolute;top:350px;left:335px" type="button"  class="btn btn-success " ng-click="validateUser()"> Login</button>
</div>
</form>
</div>
</body>
</html> -->

 
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shadow Login Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files --> 
<!-- web font --> 
<link href="//fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Arsenal:400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
<span style="color:red;">{{message}}</span>
<span style="color:red;">{{error.message}}</span>
<span style="color:red;">{{logoutSuccess}}</span>
	<!-- main --> 
	<div class="main-agileinfo slider ">
		<div class="items-group">
			<div class="item agileits-w3layouts">
				<div class="block text main-agileits"> 
					<span class="circleLight"></span> 
					<!-- login form -->
					<div class="login-form loginw3-agile"> 
						<div class="agile-row">
							<h1></h1> 
							<div class="login-agileits-top"> 	
								<form> 
									<p>User Name </p>
									<input type="text" class="name" ng-model="user.username" name="username" required=""/>
									<p>Password</p>
									<input type="password" class="password"  ng-model="user.password" name="Password" required=""/>  
									<label class="anim">
										<input type="checkbox" class="checkbox">
										<span> Remember me ?</span> 
									</label>   
									<input type="submit" ng-click="validateUser()" value="Login"> 
								</form> 	
							</div> 
							<div class="login-agileits-bottom wthree"> 
								<h6><a href="#">Forgot password?</a></h6>
							</div> 
						</div>  
					</div>   
				</div>
				<div class="w3lsfooteragileits">
					<p> &copy; 2017  All Rights Reserved</p>
				</div> 
			</div>   
		</div>
	</div>	 
	<!-- //main --> 
</body>
</html>