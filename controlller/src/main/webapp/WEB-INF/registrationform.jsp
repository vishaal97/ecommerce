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
background-image: url("resources/amazing.jpg");
}
</style>
<body>
<br><br><br><br><br>
<div class="container">
{{error.message}}
<form class="form-horizontal" name="userForm">
  <div  class="form group">
    <label class="control-label col-sm-2" for="username"><span style="color:white">Username:</span></label>
       <div class="col-sm-10">
         <input type="text"  class="form-control" id="username" placeholder="Enter username" ng-model="user.username" required ><br>
       
       </div>
  </div>
  
  <div class="form group">    
    <label class="control-label col-sm-2" for="pwd"><span style="color:white">Password:</span></label>
       <div class="col-sm-10">
          <input type="password" class="form-control" id="pwd" placeholder="Enter password" ng-model="user.password" required ng-minlength="3"><br>
       </div>
  </div>
  
  <div class="form group">
      <label class="control-label col-sm-2" for="firstname"><span style="color:white">Firstname:</span></label>
         <div class="col-sm-10">
            <input type="text" class="form-control" id="firstname" placeholder="Enter firstname" ng-model="user.firstname" required><br>
         </div>
  </div>
  
  <div class="form group">    
      <label class="control-label col-sm-2" for="lastname"><span style="color:white">Lastname:</span></label>
         <div class="col-sm-10">
            <input type="text" class="form-control" id="lastname" placeholder="Enter lastname" ng-model="user.lastname" required><br>
         </div><br>
  </div>
  
  <div class="form group">
      <label class="control-label col-sm-2" for="email"><span style="color:white">Email:</span></label>
         <div class="col-sm-10">
            <input type="email" class="form-control" id="email" placeholder="email" ng-model="user.email" required><br>
         </div>
  </div>
  
  <div class="form group">
      <label class="control-label col-sm-2" for="phonenumber"><span style="color:white">Phonenumber:</span></label>
          <div class="col-sm-10">
               <input type="phonenumber" class="form-control" id="phonenumber" placeholder="phonenumber" ng-model="user.phonenumber" required ><br>
          </div>
  </div>
  
  <div class="form group">
   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <span style="color:white">Select Role:</span>
   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" value="STUDENT" ng-model="user.role"><span style="color:white">Student</span> 
   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" value="ALUMINI" ng-model="user.role"><span style="color:white">Alumini</span>
   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" value="EMPLOYEE" ng-model="user.role"><span style="color:white">Employee</span>
  </div><br>
  
  <div class="form group">    
     <div class="col-sm-offset-2 col-sm-10">
       <center><button type="submit" class="btn btn-success btn-block" ng-click="registerUser()"> Submit </button></center> 
     </div>
  </div>
</form>
</div>
</body>
</html>
 -->

 <!DOCTYPE html>
<html>
<head>
<title>Flat Sign Up Form Responsive Widget Template| Home :: W3layouts</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Flat Sign Up Form Responsive Widget Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all">
<link href="css/font-awesome1.min.css" rel="stylesheet" type="text/css" media="all">
<!-- //css files -->
<!-- online-fonts -->
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'><link href='//fonts.googleapis.com/css?family=Raleway+Dots' rel='stylesheet' type='text/css'>
</head>
{{error.message}}

<body>
<!--header-->
	<div class="header-w3l">
		
	</div>
<!--//header-->
<!--main-->
<div class="main-agileits">
	<h2 class="sub-head">Sign Up</h2>
	
	</div>
	<div class="form group">
	<span style="color:white">Select Role:</span>&nbsp &nbsp &nbsp
	    <input type="radio" value="STUDENT" ng-model="user.role"><span style="color:white">Student</span>&nbsp&nbsp
	    <input type="radio" value="ALUMINI" ng-model="user.role"><span style="color:white">Alumini</span>&nbsp&nbsp
	    <input type="radio" value="EMPLOYEE" ng-model="user.role"><span style="color:white">Employee</span>
  </div>
		<div class="sub-main">	
			<form >
			    <input placeholder="User Name" name="username" class="username" ng-model="user.username" type="text" required="">
					<span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span><br>
				<input placeholder="First Name" name="firstame" class="firstname" ng-model="user.firstname" type="text" required="">
					<span class="icon2"><i class="fa fa-user" aria-hidden="true"></i></span><br>
				<input placeholder="Last Name" name="lastname" class="lastname"  ng-model="user.lastname" type="text" required="">
					<span class="icon3"><i class="fa fa-user" aria-hidden="true"></i></span><br>
				<input placeholder="Phone Number" name="phoneumber" class="phonenumber" type="text" ng-model="user.phonenumber" required="">
					<span class="icon4"><i class="fa fa-phone" aria-hidden="true"></i></span><br>
				<input placeholder="Email" name="email" class="email" type="text" ng-model="user.email" required="">
					<span class="icon5"><i class="fa fa-envelope" aria-hidden="true"></i></span><br>
				<input  placeholder="Password" name="password" class="password" type="password" ng-model="user.password" required="">
					<span class="icon6"><i class="fa fa-unlock" aria-hidden="true"></i></span><br>
				
				
				<input type="submit" ng-click="registerUser()" value="sign up">
			</form>
		</div>
		<div class="clear"></div>
</div>
<!--//main-->

<!--footer-->
<div class="footer-w3">
	<p>&copy; 2016 Flat Sign Up Form . All rights reserved </p>
</div>
<!--//footer-->

</body>
</html>
 