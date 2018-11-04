package com.h4ppY.happy.controller;

import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
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

    @RequestMapping("views/pages/test")
    public void list(ModelMap model, HttpServletRequest request) {
        model.put("isGeneral", true);
    }

    @RequestMapping("views/pages/test.jsp")
    public void list2(ModelMap model, HttpServletRequest request) {
        model.put("isGeneral", true);
    }
}
