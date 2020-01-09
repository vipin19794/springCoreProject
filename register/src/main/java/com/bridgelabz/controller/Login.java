package com.bridgelabz.controller;

import java.awt.HeadlessException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet
{

    public void doPost(HttpServletRequest request, HttpServletResponse response)throws HeadlessException, IOException
    {
    	String user = request.getParameter("username");
    	String pass = request.getParameter("password");
    	try 
    	{
    		String query = "select *from register where password='"+pass+"' AND username='"+user+"'";
    	    Class.forName("com.mysql.jdbc.Driver");
    	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin1@3");
    	    Statement st = con.createStatement();
    	    ResultSet rs;
    	    rs = st.executeQuery(query);
    	    while(rs.next())
    	    {
    	    	HttpSession session = request.getSession();
    	    	session.setAttribute("username", user);
    	    	response.sendRedirect("studentProfile.jsp");
    	    	
    	    	Cookie ck = new Cookie("username", user);
    	    	response.addCookie(ck);
    	    }
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }
}
