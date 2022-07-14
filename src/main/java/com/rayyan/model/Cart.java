// Developer: Rayyan Abdulmunib
// Date: 07/07/2022
// Description: Cart Model Class (POJO) for the ECom App.


package com.rayyan.model;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cart extends Product
{
	// Declaring class data fields
	private int quantity;
}
