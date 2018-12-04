package com.h4ppY.happy.controller.system;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.h4ppY.happy.dto.system.UserDTO;
import com.h4ppY.happy.service.system.UserService;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("")
public class UserController {

	@Autowired
	UserService userService;
	
    @RequestMapping("register.json")
    public String register(UserDTO userDTO){
    	boolean isExist = userService.isExist(userDTO.getCellPhone(), userDTO.getUserName());
    	if(!isExist) {
    		userService.add(userDTO);
    	} else {
    		
    	}
    	return "";
    }

}
