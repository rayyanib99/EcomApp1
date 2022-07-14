// Developer: Rayyan Abdulmunib
// Date: 07/07/2022
// Description: Register Servlet for the ECom App.


package com.rayyan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.rayyan.connection.DBCon;
import com.rayyan.dao.UserDao;
import com.rayyan.model.User;

@WebServlet("/register")
public class Register extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	
	/*
	 * GET
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		res.sendRedirect("registration.jsp");
	}

	
	/*
	 * POST
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		res.setContentType("text/html; charset=UTF-8");
		
		try(PrintWriter out = res.getWriter())
		{
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			UserDao userDAO = new UserDao(DBCon.getConnection());
			boolean wasInserted = userDAO.register(name, email, password);
			
			//if the name, email, and password already exist in the database, then show them "login failed". (start here)
			
			
			// If the record was inserted into the database successfully
			if(wasInserted == true)
			{
				res.sendRedirect("login.jsp");
			}
			
			else
			{
				out.print("Registration Failed.");
			}
		} 
		
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		} 
	}
}
