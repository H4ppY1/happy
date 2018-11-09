package com.h4ppY.happy.dao;

import java.util.List;
import java.util.Map;

import com.h4ppY.happy.dto.GoodsQuery;

public interface GoodsDAO {
    List<Map<String,Object>> goodsSearch(GoodsQuery goodsQuery);
}
