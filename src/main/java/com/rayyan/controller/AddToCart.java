// Developer: Rayyan Abdulmunib
// Date: 07/07/2022
// Description: AddToCart Servlet for the ECom App.


package com.rayyan.controller;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.rayyan.model.Cart;

@WebServlet("/add-to-cart")
public class AddToCart extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	
	/*
	 * 
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
	{
		res.setContentType("text/html; charset = UTF-8");
		
		try(PrintWriter out = res.getWriter())
		{
			ArrayList<Cart> cartList = new ArrayList<>();
			
			int id = Integer.parseInt(req.getParameter("id"));
			
			Cart cart = new Cart();
			cart.setProdID(id);
			cart.setQuantity(1);
			
			HttpSession session = req.getSession();
			ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
			
			if(cart_list == null)
			{
				cartList.add(cart);
				session.setAttribute("cart-list", cartList);
				res.sendRedirect("cart.jsp");
			}
			
			else
			{
				cartList = cart_list;
				
				cartList.contains(cart);
				
				boolean exists = false;
				
				for(Cart c : cartList)
				{
					if(c.getProdID() == id)
					{
						exists = true;
						req.getRequestDispatcher("index.jsp").include(req, res);
						out.println("<h3 style = 'color: crimson; text-align: center'> Item is already in the cart.<a href = 'cart.jsp'> Go To Cart</a></h3>");
					}
				}
				
				if(!exists)
				{
					cartList.add(cart);
					res.sendRedirect("cart.jsp");
				}
			}
		}
	}
}
