package com.h4ppY.happy.service.serviceImpl;

import com.h4ppY.happy.mapper.AssetMapper;
import com.h4ppY.happy.pojo.Asset;
import com.h4ppY.happy.service.AssetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AssetServiceImpl implements AssetService {

    @Autowired
    private AssetMapper assetMapper;

    @Override
    public List<Object> list() {
        return assetMapper.list();
    }
}
