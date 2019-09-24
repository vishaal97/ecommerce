<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<style>
div
{
background-color:grey;
padding:250px;
text-align:center;
}
label
{
text-align:center;
font-size:35px;
}
input[type=text]
{
display:inline-block;
font-size:23px;
padding:25px;
margin:25px;
border:1px orange;
box-sizing:border-box;
width:400px;
}
input[type=button]
{
background color:orange;
box-sizing:border-box;
width:400px;
}
input[type=button]
{
background color:red;
padding:20px;
font-size:30px;
border-style:solid black;
background-color:chartreuse;
}
table,th,tr
{
border:1px solid black;
}
</style>
<script>
var arr=[];
function validate()
{
var supplierName=document.forms["myform"]["supplierName"].value
var address=document.forms["myform"]["address"].value
console.log(supplierName.trim().length)
console.log(address.trim().length)
if(supplierName.trim().length==0 || address.trim().length==0 )
{
console.log("there is no character")
}
else
{
var user={"supplierName":supplierName,"address":address}
arr.push(user)
}}
function display()
{
document.write("<table border='2'>")
document.write("<th>supplierName</th>")
document.write("<br>")
document.write("<th>address</th>")

for(i=0;i<arr.length;i++)
{
document.write("<tr>")
document.write("<td>")
document.write(arr[i].supplierName)
document.write("</td>")
document.write("<td>")
document.write(arr[i].address)
document.write("</td>")
document.write("</tr>")
}}
</script>
</head>
<body>
<h1>supplierPage</h1>
<form name="myform">
<div>
Enter the supplierName
<input type='text' name='supplierName' placeholder='supplierName' size='40'/><br>
Enter the address
<input type='text' name='address' placeholder='address' size='40'/><br><br>
<input type='button' value='Proceed' onclick='validate()'/>
<input type='button' value='Display' onclick='display()'/></div></form>
</body>
</html>




    