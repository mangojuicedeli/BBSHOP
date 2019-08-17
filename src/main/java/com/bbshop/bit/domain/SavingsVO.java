package com.bbshop.bit.domain;

import lombok.Data;

@Data
public class SavingsVO {
	
	public SavingsVO() {}
	
	public SavingsVO(long savings_curr, long order_num, long savings_used, String order_items) {
		
		this.or_savings = savings_curr;
		this.or_num = order_num;
		this.savings_used = savings_used;
		this.order_items = order_items;
	}
	
	private String or_date;
	private long or_savings;
	private long or_num;
	private long or_savings_total; // 적립금 총합 필드 추가. DB에는 존재하지 않는 컬럼.
	private long savings_used;
	private String order_items;
}
