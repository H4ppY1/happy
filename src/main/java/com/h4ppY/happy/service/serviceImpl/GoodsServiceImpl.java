package com.h4ppY.happy.service.serviceImpl;

import com.github.pagehelper.PageHelper;
import com.h4ppY.happy.dao.GoodsDAO;
import com.h4ppY.happy.dto.GoodsQuery;
import com.h4ppY.happy.page.Page;
import com.h4ppY.happy.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsDAO goodsDAO;

    @Override
    public Page<Map<String, Object>> goodsSearch(GoodsQuery goodsQuery) {
    	PageHelper.startPage(goodsQuery);
    	List<Map<String, Object>> resultList = goodsDAO.goodsSearch(goodsQuery);
        return new Page<>(resultList);
    }

}
