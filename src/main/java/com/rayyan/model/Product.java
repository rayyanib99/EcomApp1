// Developer: Rayyan Abdulmunib
// Date: 07/07/2022
// Description: Product Model Class (POJO) for the ECom App.


package com.rayyan.model;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product 
{
	// Declaring class data fields
	private int prodID;
	private String prodName;
	private String prodCategory;
	private String prodPrice;
	private String prodStatus;
	private String prodImg;
}
