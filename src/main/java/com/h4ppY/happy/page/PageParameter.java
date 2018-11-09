/**
 * 
 */
package com.h4ppY.happy.page;

import com.github.pagehelper.IPage;

import lombok.Data;

@Data
public class PageParameter implements IPage {

	public static final Integer PAGE_SIZE_DEFAULT = 20;
	private Integer pageNo;
	private Integer pageSize = PAGE_SIZE_DEFAULT;
	private Integer page;
	private Integer limit = PAGE_SIZE_DEFAULT;
	
	@Override
	public Integer getPageNum() {
//		return this.pageNo;
		return this.page;
	}

	@Override
	public Integer getPageSize() {
//		return this.pageSize;
		return this.limit;
	}

	@Override
	public String getOrderBy() {
		// TODO 自动生成的方法存根
		return null;
	}

}
