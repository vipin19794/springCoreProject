<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
h1
{
    font-size:40px;
    font-weight:bold;
    text-align:center;
}
.div2
{
     margin-top:50px;
}
body
{
     background-color:#5D9396;
}
table
{
    background-color:white;
}

.div1
{
    width:1000px;
    margin-left:350px;
    margin-top:100px;
}
input
{
    height:30px;
    width:250px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="div2">
<h1>Update Record</h1>
</div>

     <%
        String id1 = request.getParameter("id");
        int id = Integer.parseInt(id1);
        String query = "select *from register where id='"+id+"'";
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin1@3");
	    Statement st = con.createStatement();
	    ResultSet rs;
	    rs = st.executeQuery(query);
	    while(rs.next())
	    {%>
	    
<div class="div1">
    <div>
        <form action="UpdateData" method="post">
             <div>
                
                <input type="hidden" name="id" value="<%=rs.getString(1)%>">
             </div><br>
             <div>
                <label>First Name</label><br>
                <input type="text" name="uname" value="<%=rs.getString(2)%>">
             </div><br>
             <div>
                <label>Last Name</label><br>
                 <input type="text" name="lname" value="<%=rs.getString(3)%>">
             </div><br>
             <div>
                <label>Mobile</label><br>
                <input type="text" name="mobile" value="<%=rs.getString(4)%>">
             </div><br>
             <div>
                 <label>Email</label><br>
                 <input type="text" name="email" value="<%=rs.getString(5)%>">
             </div><br>
             <div>
                 <label>city</label><br>
                 <input type="text" name="city" value="<%=rs.getString(6)%>">
             </div><br>
             <div>
                 <label>state</label><br>
                 <input type="text" name="state" value="<%=rs.getString(7)%>">
             </div><br>
             <div>
                 <label>Country</label><br>
                 <input type="text" name="country" value="<%=rs.getString(8)%>">
             </div><br>
             <div>
                 <label>Pincode</label><br>
                 <input type="text" name="pincode" value="<%=rs.getString(9)%>">
             </div><br>
             <div>
                 <label>username</label><br>
                 <input type="text" name="username" value="<%=rs.getString(10)%>">
             </div><br>
             <div>
                 <label>password</label><br>
                 <input type="text" name="password" value="<%=rs.getString(11)%>">
             </div><br><br><br>
             <div>
                 <input type="submit" name="submit" value="Update">
             </div><br>
             
        </form>
   </div>
</div>  
	   <%}%>

</body>
</html>