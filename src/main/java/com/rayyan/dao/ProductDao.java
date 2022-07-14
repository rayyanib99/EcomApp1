// Developer: Rayyan Abdulmunib
// Date: 07/07/2022
// Description: Product DAO Class for the ECom App.


package com.rayyan.dao;

import java.sql.*;
import java.util.*;
import com.rayyan.model.Product;

public class ProductDao 
{
	// Declaring the ProductDao-class data fields
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	// Default constructor to establish connection to the database
	public ProductDao(Connection con) 
	{
		this.con = con;
	}
	
	
	/*
	 * Listing all the products.
	 */
	public List<Product> getAllProducts()
	{
		List<Product> products = new ArrayList<Product>();
		
		try
		{
			query = "SELECT * FROM Products";
			pst = this.con.prepareStatement(query);
			rs = pst.executeQuery();
			
			while(rs.next())
			{
				Product row = new Product();
				row.setProdID(rs.getInt("prod_id"));
				row.setProdName(rs.getString("prod_name"));
				row.setProdCategory(rs.getString("prod_category"));
				row.setProdPrice(rs.getString("prod_price"));
				row.setProdStatus(rs.getString("prod_status"));
				row.setProdImg(rs.getString("prod_img"));
				
				products.add(row);
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return products;
	}
}
