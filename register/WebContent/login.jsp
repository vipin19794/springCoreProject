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
    margin-left:450px;  
    margin-top:120px;
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
<title>Login page</title>
</head>
<body>
<a href="index.jsp">Home</a>
<div class="div1">
    <div><h1>Login page</h1></div>
    <div>
        <form action="Login" method="post">
             <div>
                <label>Username</label><br>
                <input type="text" name="username">
             </div><br>
             <div>
                <label>password</label><br>
                 <input type="password" name="password">
             </div><br>
             <div>
                 <input type="submit" value="login">
             </div><br>
             
        </form>
   </div>
</div>      
</body>
</html>