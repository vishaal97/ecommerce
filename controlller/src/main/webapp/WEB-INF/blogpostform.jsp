<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <style>
body{
background-image:url("resources/blog.jpg");
}
</style>
<body>
<div class="container" >
<form>
<br><br><br><br>
<div class="form-group">
<strong>Enter Blog Title :</strong><input type="text" ng-model="blogPost.blogTitle" class="form-control" style="width:500px; height:35px;" required=""> 
</div>
<div class="form-group">
<strong>Enter Description :</strong><textarea rows="5" cols="20" ng-model="blogPost.description" class="form-control" style="width:500px;" required=""> </textarea>
</div>
<input type="submit" class="btn" ng-click="addBlogPost()" value="Add Blog Post">
</form>
</div>
</body>
</html>