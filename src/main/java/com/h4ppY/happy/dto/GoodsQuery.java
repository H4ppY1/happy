package com.h4ppY.happy.dto;

import java.io.Serializable;

import com.h4ppY.happy.page.PageParameter;

import lombok.Data;

@Data
public class GoodsQuery extends PageParameter implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private String goodsName;
}
