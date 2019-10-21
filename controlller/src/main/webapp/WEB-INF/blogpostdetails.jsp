<style>
body{
background-color:#CCFB5D;
}
</style>



<body>

<div class="row">
<div>
<div class="panel panel-success">
<div class="panel-heading">
<div><strong>Blogpost Title:</strong>&nbsp{{blogPost.blogTitle}}</div><br>
<span><strong>Created By:</strong>&nbsp&nbsp{{blogPost.postedBy.username}}</span>&nbsp&nbsp&nbsp&nbsp&nbsp
<span><strong>On:</strong>&nbsp&nbsp{{blogPost.postedOn | date:'medium'}}</span>
</div>
<div class="panel-body" style="background-color:#C3FDB8">
<span >{{blogPost.description}}</span>
</div>
</div>
</div>
</div>
<form>
{{error.message}}
<textarea rows="2" cols="60" ng-model="blogComment.commentText"> </textarea><br>
<input type="submit" class="btn btn-success" ng-click="addComment()" value="Submit">
</form><br><br>
<a ng-click="getComments()"><strong style="color:#36C331">Show Comments</strong></a><br>
<ul ng-show="showcomments">
<li ng-repeat="blogComment in blogComments" style="list-style : none"><br>
<font style="color:#556B2F">{{blogComment.commentText}}</font>&nbsp &nbsp

<span><strong style="color:#556B2F">Commented By</strong>&nbsp{{blogComment.commentedBy.username}}</span>&nbsp
<span><strong style="color:#556B2F">Commented On</strong>&nbsp{{blogComment.commentedOn | date : 'yyyy/MM/dd'}}</span>
</li>
</ul>

</body>