package com.bridgelabz.controller;

import java.awt.HeadlessException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateData")
public class UpdateData extends HttpServlet 
{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws HeadlessException, IOException {
		
		String id1 = request.getParameter("id");
		int id = Integer.parseInt(id1);
		String uname = request.getParameter("uname");
		String lname = request.getParameter("lname");
		String mobile1 = request.getParameter("mobile");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String country = request.getParameter("country");
		String pincode1 = request.getParameter("pincode");
		int pincode = Integer.parseInt(pincode1);
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("2");

		try {
			String query = "UPDATE register SET uname='"+uname+"',lname='"+lname+"',mobile='"+mobile1+"',email='"+email+"',city='"+city+"',state='"+state+"',country='"+country+"',pincode='"+pincode +"',username='"+username+"',password='"+password+"' WHERE id='"+id+"'";
			System.out.println("3");
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("4");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin1@3");
			Statement st = con.createStatement();
			st.executeUpdate(query);

			response.sendRedirect("studentRecord.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
