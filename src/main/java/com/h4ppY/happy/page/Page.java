package com.h4ppY.happy.page;

import java.io.Serializable;
import java.util.List;

import lombok.Data;

@Data
public class Page<T> implements Serializable {
	private List<T> rows;
	private Integer count;
	
	public Page(List<T> rows, Integer count) {
		this.rows = rows;
		this.count = count;
	}
	
	public Page(List<T> rows) {
		this.rows = rows;
		this.count = rows.size();
	}
}
