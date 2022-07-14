// Developer: Rayyan Abdulmunib
// Date: 07/07/2022
// Description: User DAO Class for the ECom App.


package com.rayyan.dao;

import java.sql.*;
import com.rayyan.model.User;

public class UserDao 
{
	// Declaring the UserDao-class data fields
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	// Default constructor to establish connection to the database
	public UserDao(Connection con) 
	{
		this.con = con;
	}
	
	
	/*
	 * Logging in.
	 */
	public User login(String email, String password)
	{
		User user = null;
		
		try
		{
			query = "SELECT * FROM Users WHERE email = ? AND password = ?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, password);
			rs = pst.executeQuery();
			
			if(rs.next())
			{
				user = new User();
				user.setUserID(rs.getInt("user_id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		return user;
	}
	
	
	/*
	 * Registration.
	 */
	public boolean register(String name, String email, String password)
	{
		int status = 0;
		boolean inserted;
		
		try
		{
			query = "INSERT INTO Users(name, email, password) VALUES(?, ?, ?)";
			pst = this.con.prepareStatement(query);
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, password);
			status = pst.executeUpdate();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		if(status == 1)
		{
			inserted = true;
		}
		
		else
		{
			inserted = false;
		}
		
		return inserted;
	}
	
	
	/*
	 * Forgotten password.
	 */
	public String forgotPassword(String email)
	{
		String pwd = "";
		User user = null;
		
		try
		{
			query = "SELECT password FROM Users WHERE email = ?";
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			rs = pst.executeQuery();
			
			if(rs.next())
			{
				pwd = rs.getString("password");
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		return pwd;
	}
}
