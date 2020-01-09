package com.bridgelabz.controller;

import java.awt.HeadlessException;
import java.io.IOException;
import java.sql.*;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet 
{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws HeadlessException, IOException {
		System.out.println("1");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String mobile1 = request.getParameter("mobile");
		//int mobile = Integer.parseInt(mobile1);
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
			String query = "INSERT INTO register(uname,lname,mobile,email,city,state,country,pincode,username,password) VALUES('"+ fname + "','" + lname + "','" + mobile1 + "','" + email + "','" + city + "','" + state + "','"+ country + "','" + pincode + "','" + username + "','" + password + "')";
			System.out.println("3");
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("4");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","admin1@3");
			Statement st = con.createStatement();
			st.executeUpdate(query);

			response.sendRedirect("index.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}