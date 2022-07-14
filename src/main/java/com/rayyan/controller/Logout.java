// Developer: Rayyan Abdulmunib
// Date: 07/07/2022
// Description: Logout Servlet for the ECom App.


package com.rayyan.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/logout")
public class Logout extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    
	
	/*
	 * 
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		try(PrintWriter out = res.getWriter())
		{
			if(req.getSession().getAttribute("auth") != null)
			{
				req.getSession().removeAttribute("auth");
				res.sendRedirect("login.jsp");
			}
			
			else
			{
				res.sendRedirect("index.jsp");
			}
		}		
	}

	
	/*
	 * 
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		doGet(req, res);
	}
}
