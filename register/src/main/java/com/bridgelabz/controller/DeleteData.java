package com.bridgelabz.controller;

import java.awt.HeadlessException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteData")
public class DeleteData extends HttpServlet
{

    public void doGet(HttpServletRequest request, HttpServletResponse response)throws HeadlessException, IOException
    {
    	String id1 = request.getParameter("id");
    	int id = Integer.parseInt(id1);
    	System.out.println(id);

    	try 
    	{
    		String query = "delete from register where id='"+id+"'";
    		System.out.println("2");
    	    Class.forName("com.mysql.jdbc.Driver");
    	    System.out.println("3");
    	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin1@3");
    	    Statement st = con.createStatement();
    	    st.executeUpdate(query);
    	    	
    	    response.sendRedirect("studentRecord.jsp");
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    }
}
