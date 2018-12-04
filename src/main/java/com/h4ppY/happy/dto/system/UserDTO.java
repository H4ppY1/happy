package com.h4ppY.happy.dto.system;

import java.io.Serializable;

import lombok.Data;

@Data
public class UserDTO implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer userId;
	private String userName;
	private String cellPhone;
	private String password;
}
