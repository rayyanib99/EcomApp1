// Developer: Rayyan Abdulmunib
// Date: 07/07/2022
// Description: User Model Class (POJO) for the ECom App.

 
package com.rayyan.model;

import lombok.*;

//POJO
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User 
{
	// Declaring class data fields
	private int userID;
	private String name;
	private String email;
	private String password;
}
