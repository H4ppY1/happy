package com.h4ppY.happy.controller;

import com.alibaba.fastjson.JSON;
import com.h4ppY.happy.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("")
public class GoodsController {

    @Autowired
    GoodsService goodsService;

    @RequestMapping("goods.json")
    @ResponseBody
    public String goodsSearch(){
        List<Map<String, Object>> data = goodsService.goodsSearch();
        Map<String, Object> result = new HashMap<>();
        result.put("code", 0);
        result.put("msg", "");
        result.put("count", 1000);
        result.put("data", data);
        return JSON.toJSONString(result);
    }
}
