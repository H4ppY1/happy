package com.h4ppY.happy.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("")
public class ForeController {

    @RequestMapping("forehome")
    public String forehome (){
        return "home";
    }

    @RequestMapping("dataUpload")
    public String foreDataUpload (){
        return "fore/dataUpload";
    }

    @RequestMapping("assetManage")
    public String foreAssetManage (Model model){
//        model.addAttribute("assetList", assetService.list());
        return "fore/assetManageFore";
    }

//    @RequestMapping("pages/test")
//    public String list(ModelMap model, HttpServletRequest request) {
//    	return "pages/test";
//    }
    
    @RequestMapping("/pages/{p}")
	public String page(@PathVariable String p){
		return "pages/" + p;
	}
}
