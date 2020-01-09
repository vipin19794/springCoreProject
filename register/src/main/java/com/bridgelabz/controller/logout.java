package com.bridgelabz.controller;

import java.awt.HeadlessException;
import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/logout")
public class logout extends HttpServlet
{

    public void doPost(HttpServletRequest request, HttpServletResponse response)throws HeadlessException, IOException
    {
    	HttpSession session = request.getSession();
    	session.setAttribute("username",null);
    	session.invalidate();
    	
    	Cookie ck = new Cookie("username", "");
    	ck.setMaxAge(0);
    	response.addCookie(ck);
    	
    	response.sendRedirect("login.jsp");
    	
    }
}