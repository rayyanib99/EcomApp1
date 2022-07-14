// Developer: Rayyan Abdulmunib
// Date: 07/07/2022
// Description: ForgotPassword Servlet for the ECom App.


package com.rayyan.controller;

import java.io.*;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.rayyan.connection.DBCon;
import com.rayyan.dao.UserDao;

@WebServlet("/forgot-password")
public class ForgotPassword extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	

	/*
	 * 
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		doGet(req, res);
	}

	
	/*
	 * 
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{	
		res.setContentType("text/html; charset=UTF-8");
		
		try(PrintWriter out = res.getWriter())
		{
			String email = req.getParameter("login-email");
			String password;
			
			UserDao userDAO = new UserDao(DBCon.getConnection());
			password = userDAO.forgotPassword(email);
			
			out.println("<h3 style = 'color: green; text-align: center'> Password: " + password + ".<a href = 'login.jsp'> Login </a></h3>");
		} 
		
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		} 
	}
}
