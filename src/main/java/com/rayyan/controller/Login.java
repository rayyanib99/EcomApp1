// Developer: Rayyan Abdulmunib
// Date: 07/07/2022
// Description: Login Servlet for the ECom App.


package com.rayyan.controller;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.rayyan.connection.DBCon;
import com.rayyan.dao.UserDao;
import com.rayyan.model.User;

@WebServlet("/login")
public class Login extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	
	/*
	 * GET
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		res.sendRedirect("login.jsp");
	}
	
	
	/*
	 * POST
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		res.setContentType("text/html; charset=UTF-8");
		
		try(PrintWriter out = res.getWriter())
		{
			String email = req.getParameter("login-email");
			String password = req.getParameter("login-password");
			
			UserDao userDAO = new UserDao(DBCon.getConnection());
			User user = userDAO.login(email, password);
			
			if(user != null)
			{
				req.getSession().setAttribute("auth", user);
				res.sendRedirect("index.jsp");
			}
			
			else
			{
				req.getRequestDispatcher("login.jsp").include(req, res);
				out.println("<h4 style = 'color: red; text-align: center'> Invalid Email/Password</h4>");
			}
		} 
		
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		} 
	}
}
