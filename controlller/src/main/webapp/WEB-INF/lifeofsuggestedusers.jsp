<!-- <html>
<head>
</head>
<style>
body{
background-color:#8FBC8B;
}
</style>
<body>
<br><br>
<center>
<table>
<thead>
<tr>
<th><font color="black" size="5px">Profile Pic</font></th>
<th><font color="black" size="5px">&nbsp&nbsp Firstname</font></th>
<th><font color="black" size="5px">&nbsp&nbsp Lastname</font></th>
<th><font color="black" size="5px">&nbsp&nbsp Online</font></th>
<th><font color="black" size="5px">&nbsp&nbsp Role</font></th>
<th><font color="black" size="5px">&nbsp&nbsp Request</font></th>
</tr><br><br>
</thead>
<tbody>
<br>
<tr ng-repeat="user in suggestedusers">
<td><img src="http://localhost:8082/CollaborationBackend/getimage/{{user.username}}"height="50px" width="50px"></td>
<td><font color="white" size="3px"> &nbsp&nbsp {{user.firstname}} &nbsp &nbsp </font></td>
<td><font color="white" size="3px"> &nbsp&nbsp {{user.lastname}} &nbsp &nbsp </font></td>
<td ng-if="user.online" ><font color="white" size="3px">&nbsp&nbsp Yes &nbsp &nbsp</font></td>
<td ng-if="!user.online"><font color="white" size="3px">&nbsp&nbsp No &nbsp &nbsp</font></td>
<td ><font color="white" size="3px">&nbsp&nbsp&nbsp {{user.role}} &nbsp&nbsp</font></td>
<td ><a ng-click="friendRequest(user.username)" class="btn btn-primary"><font color="white" size="3px">&nbsp&nbsp Send Friend Request</font></a></td>
</tr>
</tbody>
</table>
</center>
</body>
</html> -->

<!DOCTYPE html>
<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}
body{
background-color:#6DBDD6;
}
th, td {
    text-align: left;
    padding: 8px;
}
th{
font-size:18px;
}
tr:nth-child(even){background-color: #C1E1A6}
</style>
</head>
<body>


<div style="overflow-x:auto;">
  <table>
    <tr>
      <th>Profile pic</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Online</th>
      <th>Role</th>
      <th>Request</th>
      
    </tr>
    <tr ng-repeat="user in suggestedusers">
      <td><img src="http://localhost:8082/CollaborationBackend/getimage/{{user.username}}"height="50px" width="50px"></td>
      <td>{{user.firstname}}</td>
      <td>{{user.lastname}}</td>
      <td ng-if="user.online" >Yes</td>
      <td ng-if="!user.online">No</td>
      <td>{{user.role}}</td>
      <td><a ng-click="friendRequest(user.username)" class="btn btn-primary">Send Friend Request</a></td>
      
    </tr>
   
  </table>
</div>

</body>
</html>
