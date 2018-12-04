package com.h4ppY.happy.controller.business;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.annotation.JsonSerialize.Inclusion;
import com.github.pagehelper.PageHelper;
import com.h4ppY.happy.constant.CookieConstants;
import com.h4ppY.happy.dto.GoodsQuery;
import com.h4ppY.happy.page.Page;
import com.h4ppY.happy.pojo.Cart;
import com.h4ppY.happy.pojo.Goods;
import com.h4ppY.happy.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
    
    @RequestMapping("/addToCarts.json")
    @ResponseBody
    public String addToCarts(HttpServletRequest request, HttpServletResponse response, Goods goods) {
    	Cart cart = null;
    	ObjectMapper objectMapper = new ObjectMapper();
    	objectMapper.setSerializationInclusion(Include.NON_NULL);
    	Cookie[] cookies = request.getCookies();
    	if (cookies != null && cookies.length > 0) {
    		for (Cookie cookie : cookies) {
    			if(CookieConstants.CARTS.equals(cookie.getValue())) {
    				try {
						cart = objectMapper.readValue(cookie.getValue(), Cart.class);
					} catch (JsonParseException e) {
						// TODO 自动生成的 catch 块
						e.printStackTrace();
					} catch (JsonMappingException e) {
						// TODO 自动生成的 catch 块
						e.printStackTrace();
					} catch (IOException e) {
						// TODO 自动生成的 catch 块
						e.printStackTrace();
					}
    				break;
    			}
    		}
    	}
    	if (cart == null) {
    		cart = new Cart();
    	}
    	
    	if (goods.getGoodsId() != null) {
    		cart.addItem(goods);
    	}
    	
    	Writer w = new StringWriter();
    	try {
			objectMapper.writeValue(w, cart);
		} catch (JsonGenerationException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (IOException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
    	
    	Cookie cookie = new Cookie(CookieConstants.CARTS, w.toString());
    	cookie.setPath("/");
    	cookie.setMaxAge(24*60*60);
    	response.addCookie(cookie);
    	
    	return "";
    }
}
