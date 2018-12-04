package com.h4ppY.happy.pojo;

import java.math.BigDecimal;

import lombok.Data;

@Data
public class Goods {
    private Integer goodsId;         // id
    private Integer goodsName;       // 品名
    private Integer specification;   // 规格
    private BigDecimal price = new BigDecimal("0.00");      	 // 售价
    private Integer amount = 1;        	 // 数量
    
    @Override
    public boolean equals(Object obj) {
		if(this == obj) return true;
    	if(obj == null) return false;
    	if (getClass() != obj.getClass()) return false;
    	Goods newItem = (Goods) obj;
    	if(!this.goodsId.equals(newItem.getGoodsId())) return false;
    	return true;
    }
}
