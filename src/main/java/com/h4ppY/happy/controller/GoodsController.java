package com.h4ppY.happy.controller;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.h4ppY.happy.dto.GoodsQuery;
import com.h4ppY.happy.page.Page;
import com.h4ppY.happy.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/pages")
public class GoodsController {

    @Autowired
    GoodsService goodsService;

    @RequestMapping("/goods.json")
    @ResponseBody
    public String goodsSearch(HttpServletRequest request, GoodsQuery goodsQuery){
    	Page<Map<String, Object>> page = goodsService.goodsSearch(goodsQuery);
        Map<String, Object> result = new HashMap<>();
        result.put("code", 0);
        result.put("msg", "");
        result.put("count", page.getCount());
        result.put("data", page.getRows());
        return JSON.toJSONString(result);
    }
}
