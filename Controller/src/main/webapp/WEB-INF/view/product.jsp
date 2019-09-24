<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<style>
div
{
background-color:dodgerblue;
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
var ProductName=document.forms["myform"]["ProductName"].value
var Price=document.forms["myform"]["Price"].value
var Quantity=document.forms["myform"]["Quantity"].value
console.log(ProductName.trim().length)
console.log(Price.trim().length)
console.log(Quantity.trim().length)
if(ProductName.trim().length==0 || Price.trim().length==0 || Quantity.trim().length==0)
{
console.log("there is no character")
}
else
{
var user={"ProductName":ProductName,"Price":Price,"Quantity":Quantity}
arr.push(user)
}}
function display()
{
document.write("<table border='2'>")
document.write("<th>ProductName</th>")
document.write("<br>")
document.write("<th>Price</th>")
document.write("<br>")
document.write("<th>Quantity</th>")
for(i=0;i<arr.length;i++)
{
document.write("<tr>")
document.write("<td>")
document.write(arr[i].ProductName)
document.write("</td>")
document.write("<td>")
document.write(arr[i].Price)
document.write("</td>")
document.write("<td>")
document.write(arr[i].Quantity)
document.write("</td>")
document.write("</tr>")
}}
</script>
</head>
<body>
<h1>Product Page</h1>
<form name="myform">
<div>
Enter the ProductName
<input type='text' name='ProductName' placeholder='ProductName' size='40'/><br>
Enter the Price
<input type='text' name='Price' placeholder='price' size='40'/><br>
Enter the Quantity
<input type='text' name='Quantity' placeholder='Quantity' size='40'/><br><br>
<input type='button' value='Proceed' onclick='validate()'/>
<input type='button' value='Display' onclick='display()'/></div></form>
</body>
</html>








    