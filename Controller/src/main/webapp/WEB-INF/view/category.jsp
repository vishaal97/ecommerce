<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>CATEGORY PAGE</title>
<style>
input[type=text],select{
width:260;
padding:12px 20px;
margin:8px 0;
display:inline-block;
border:1px solid;
border-radius:4px;
box-sizing:border-box;
}
input[type=button]{
width:260;
background-color:green;
color:white;
padding:14px 20px;
margin:8px 10px;
border:1px;
border-radius:4px;
}
input[type=reset]{
width:260;
background-color:green;
color:white;
padding:14px 20px;
margin:8px 10px;
border:1px;
border-radius:4px;
}
input[type=reset]:hover{
background color:blue;
}
input[type=button]:hover{
background color:blue;
}
div{
text-align:center;
border-radius:5px;'
background-color:pink;
padding:150px;
}
table,th,td{
border:1px solid black;
text align:center;
}
</style>
<script>
var arr=[];
function validate()
{
var categoryname=document.forms["myform"]["categoryname"].value;
if(categoryname.trim().length==0)
{
console.log("there is no character")
}
else
{
var user={"categoryname":categoryname}
arr.push(user)
}}
function display()
{
document.write("<table border='1'>")
document.write("<th>categoryname")
document.write("<br>")
for(i=0;i<arr.length;i++)
{
document.write("<tr>")
document.write("<td>")
document.write(arr[i].categoryname)
document.write("</td>")
document.write("</tr>")
}
}
</script>
</head>
<body>
<table><div><h2>CATEGORY DETAILS</h2>
<form action='#'name='myform'>
Enter categoryname
<input type='text'name='categoryname'/><br><br>
<input type='reset'value='Proceed'onclick='validate()'/>
<input type='button'value='Display'onclick='display()'/>
</form>
</div>
</table>
</body>
</html>