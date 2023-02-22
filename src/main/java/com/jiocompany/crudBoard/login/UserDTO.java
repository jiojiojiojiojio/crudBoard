package com.jiocompany.crudBoard.login;

import lombok.Data;

@Data
public class UserDTO {
	private String u_id;
	private String u_pw;
	private String u_name;
	private int u_birth;
	private String u_sex;
	private String u_number;
	private String u_address;
	private String u_profile;
	
}
