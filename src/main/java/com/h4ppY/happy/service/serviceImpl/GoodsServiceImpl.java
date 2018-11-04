package com.h4ppY.happy.service.serviceImpl;

import com.h4ppY.happy.dao.GoodsDAO;
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
    public List<Map<String, Object>> goodsSearch() {
        return goodsDAO.goodsSearch();
    }
}
