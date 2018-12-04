package com.h4ppY.happy.pojo;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<Goods> items = new ArrayList<>();
	public void addItem(Goods goods) {
		if(items.contains(goods)) {
			//已存在时，增加数量
			for(Goods item : items) {
				if(item.equals(goods)) {
					item.setAmount(item.getAmount() + goods.getAmount());
				}
			}
		} else {
			items.add(goods);
		}
	}
	
	public List<Goods> getItems(){
		return items;
	}
	public void setItems(List<Goods> items){
		this.items = items;
	}
}
