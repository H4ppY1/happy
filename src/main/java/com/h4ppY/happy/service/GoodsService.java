package com.h4ppY.happy.service;

import java.util.List;
import java.util.Map;

import com.h4ppY.happy.dto.GoodsQuery;
import com.h4ppY.happy.page.Page;

public interface GoodsService {
    Page<Map<String,Object>> goodsSearch(GoodsQuery goodsQuery);
}
