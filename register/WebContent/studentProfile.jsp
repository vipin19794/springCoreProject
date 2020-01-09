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
    margin-left:250px;
    margin-top:100px;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    if(session.getAttribute("username") == null)
    {
    	response.sendRedirect("login.jsp");
    }
%>
<form action="logout" method="post">
     <input type="submit" value="logout">
</form>

<div class="div2">
<h1>Student Records</h1>
</div>

<div class="div1">
<form>
<table>
     <tr> 
         <th>ID</th>
         <th>First Name</th>
         <th>Last Name</th>
         <th>Mobile No.</th>
         <th>Email</th>
         <th>City</th>
         <th>State</th>
         <th>Country</th>
         <th>pincode</th>
         <th>username</th>
     </tr>
     <%
       	String user = (String)session.getAttribute("username");
        String query = "select *from register where username='"+user+"'";
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin1@3");
	    Statement st = con.createStatement();
	    ResultSet rs;
	    rs = st.executeQuery(query);
	    while(rs.next())
	    {%>
	    	<tr>
	    	   <td><%=rs.getString(1)%></td>
	    	   <td><%=rs.getString(2)%></td>
	    	   <td><%=rs.getString(3)%></td>
	    	   <td><%=rs.getString(4)%></td>
	    	   <td><%=rs.getString(5)%></td>
	    	   <td><%=rs.getString(6)%></td>
	    	   <td><%=rs.getString(7)%></td>
	    	   <td><%=rs.getString(8)%></td>
	    	   <td><%=rs.getString(9)%></td>
	    	   <td><%=rs.getString(10)%></td>
	    	</tr>
	   <%}%>
     
     
</table>
</form>
</div>

<!--<div class="div1">
<h1>Hello Vipin</h1>
<h1>Welcome To BridgeLabz</h1>
</div>-->
</body>
</html>
