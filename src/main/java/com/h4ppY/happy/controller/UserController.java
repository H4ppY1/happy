package com.h4ppY.happy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("")
public class UserController {

    @RequestMapping("register")
    public String registerRedirect(HttpServletRequest request){
        return "register";
    }

    @RequestMapping("login")
    public String loginRedirect(HttpServletRequest request){
        return "login";
    }

    @RequestMapping("register.json")
    public String register(HttpServletRequest request){
        return "";
    }

}
