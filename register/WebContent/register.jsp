<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
input
{
    height:20px;
    width:350px;
}
label
{
    font-weight:bold;
}
body
{
   background-color:#d6d6d6;
}
.div1
{
    margin-left:400px;  
}
h1
{
    color:#636363;
    font-weight:bold;
    font-size:50px;
}
a
{
   text-decoration:none;
   font-weight:bold;
   color:#636363; 
}
</style>
<meta charset="UTF-8">
<title>Register Page</title>
</head>
<body>
<a href="index.jsp">Home</a>
<div class="div1">
    <div><h1>Registration page</h1></div>
    <div>
        <form name="Form" action="Register" method="post" onsubmit="return validate()">
             <div>
                <label>First Name</label><br>
                <input type="text" name="fname" id="fname">
             </div><br>
             <div>
                <label>Last Name</label><br>
                 <input type="text" name="lname" id="lname">
             </div><br>
             <div>
                <label>Mobile</label><br>
                <input type="text" name="mobile" id="mobile">
             </div><br>
             <div>
                 <label>Email</label><br>
                 <input type="text" name="email" id="email">
             </div><br>
             <div>
                 <label>city</label><br>
                 <input type="text" name="city" id="city">
             </div><br>
             <div>
                 <label>state</label><br>
                 <input type="text" name="state" id="state">
             </div><br>
             <div>
                 <label>Country</label><br>
                 <input type="text" name="country" id="country">
             </div><br>
             <div>
                 <label>Pincode</label><br>
                 <input type="text" name="pincode" id="">
             </div><br>
             <div>
                 <label>username</label><br>
                 <input type="text" name="username">
             </div><br>
             <div>
                 <label>password</label><br>
                 <input type="password" name="password">
             </div><br><br><br>
             <div>
                 <input type="submit" name="submit" value="submit">
             </div><br>
             
        </form>
   </div>
</div>  

<script>
function validate()
{
    var fname = document.forms["Form"]["fname"].value;
    if(fname == "")
    {
        alert("please fill first name field"); 
        return false;
    }
    if(!isNaN(fname))
    {
        alert("character  allow first name field"); 
        return false;
    }
    /********************************************************************/
    var lname = document.forms["Form"]["lname"].value;
    if(lname == "")
    {
        alert("please fill Last name field"); 
        return false;
    }
    if(!isNaN(lname))
    {
        alert("character  allow last name field"); 
        return false;
    }

    /********************************************************************/
    var mobile = document.forms["Form"]["mobile"].value;
    if(mobile == "")
    {
        alert("please fill mobile field"); 
        return false;
    }
    if(isNaN(mobile))
    {
        alert("number allow mobile field"); 
        return false;
    }

    /********************************************************************/
    var email = document.forms["Form"]["email"].value;
    if(email == "")
    {
        alert("please fill email field"); 
        return false;
    }

    /********************************************************************/
    var city = document.forms["Form"]["city"].value;  
    if(city == "")
    {
        alert("please fill city field"); 
        return false;
    }

    /********************************************************************/
    var state = document.forms["Form"]["state"].value;
    if(state == "")
    {
        alert("please fill state field"); 
        return false;
    }
    if(!isNaN(state))
    {
        alert("character allow state field"); 
        return false;
    }

    /********************************************************************/
    var country = document.forms["Form"]["country"].value;
    if(country == "")
    {
        alert("please fill country field"); 
        return false;
    }
    if(!isNaN(country))
    {
        alert("character allow country field"); 
        return false;
    }

    /********************************************************************/
    var pincode = document.forms["Form"]["pincode"].value;
    if(pincode == "")
    {
        alert("please fill pincode field"); 
        return false;
    }
    if(isNaN(pincode))
    {
        alert("number allow pincode field"); 
        return false;
    }

    /********************************************************************/
    var username = document.forms["Form"]["username"].value;
    if(username == "")
    {
        alert("please fill username field"); 
        return false;
    }

    /********************************************************************/
    var password = document.forms["Form"]["password"].value;
    if(password == "")
    {
        alert("please fill password field"); 
        return false;
    }     
}
</script>

 
</body>
</html>