!DOCTYPE html>
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
     
   
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    
  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css"
	rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="app">
<header>
            <nav class="navbar navbar-default">
            
           <div class="container-fluid">
		<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
                <div class="navbar-header">
                    <a class="navbar-brand" href="/">NIIT</a>
                </div>
<div class="collapse navbar-collapse" id="collapse-example">
                <ul class="nav navbar-nav ">
                <li><a href="#/home" ng-show="currentUser.firstname">Home</a></li>
                <li><a href="#/aboutus" ng-show="currentUser.firstname">About Us</a></li>
                <li><a href="#" ng-show="currentUser.firstname">Welcome {{currentUser.firstname}} {{currentUser.lastname}} </a></li>
                <li><a href="#/editprofile" ng-show="currentUser.firstname">Edit User Profile</a></li>
                <li><a href="#/uploadprofilepic" ng-show="currentUser.firstname"><img src="http://localhost:8087/CollaborationBackend/getimage/{{currentUser.username}}"
                      alt="Upload Profile Pic" height="30px" width="30px" clas="img-rounded"></a></li>
                <li><a href="#/savejob" ng-show="currentUser.role=='ADMIN'">Save Job</a></li>
                <li><a href="#/getallJobs" ng-show="currentUser.firstname">Get All Jobs</a></li>
                <li class="dropdown"><a href="" class="dropdown-toggle"
                    data-toggle="dropdown" ng-show="currentUser.username">Blog {{currentUser.username}} <b class="caret"></b></a>
                    <ul class=dropdown-menu">
                    <li><a href="#/getallblogs">View all blogs</a></li>
                    <li><a href="#/saveblogpost">Post Blog</a></li>
                    </ul>
                </li>
                
                <li class="dropdown"><a href="" class="dropdown-toggle"
                    data-toggle="dropdown" ng-show="currentUser.username">Friend <b class="caret"></b></a>
                    <ul class=dropdown-menu">
                    <li><a href="#/suggesteduserslist">List of Suggested Users</a></li>
                    <li><a href="#/pendingrequests">Friend Request</a></li>
                    </ul>
                </li>
                
                <li><a href="#/register" ng-hide="currentUser.firstname">Sign Up</a></li>
                <li><a href="#/login" ng-hide="currentUser.firstname">Sign In</a></li>
                <li><a href="" ng-click="logout()" ng-show="currentUser.firstname">logout</a></li>
                </ul>
                

</div>
</div>
  
            </nav>
        </header>
<div ng-view></div>
</body>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.js"></script>
	<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-route.js"></script>
	
	<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular-cookies.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
	<script type="text/javascript" src="controller/usercontroller.js"></script>
	<script type="text/javascript" src="service/userservice.js"></script>
	<script type="text/javascript" src="controller/jobcontroller.js"></script>
	<script type="text/javascript" src="service/jobservice.js"></script>
	<script type="text/javascript" src="controller/blogpostcontroller.js"></script>
	<script type="text/javascript" src="controller/blogpostdetailcontroller.js"></script>
	<script type="text/javascript" src="service/blogpostservice.js"></script>
	<script type="text/javascript" src="controller/friendcontroller.js"></script>
	<script type="text/javascript" src="service/friendservice.js"></script>
	<link href="css/sample.css"/>
	
	
	<!--<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.js"></script>
	  
	
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	  
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
      <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css">
     
-->
</html>