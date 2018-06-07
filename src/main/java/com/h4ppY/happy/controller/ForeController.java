package com.h4ppY.happy.controller;

import com.h4ppY.happy.mapper.AssetMapper;
import com.h4ppY.happy.service.AssetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class ForeController {

    @Autowired
    private AssetService assetService;

    @RequestMapping("forehome")
    public String forehome (){
        return "fore/home";
    }

    @RequestMapping("dataUpload")
    public String foreDataUpload (){
        return "fore/dataUpload";
    }

    @RequestMapping("assetManage")
    public String foreAssetManage (Model model){
        model.addAttribute("assetList", assetService.list());
        return "fore/assetManageFore";
    }
}
