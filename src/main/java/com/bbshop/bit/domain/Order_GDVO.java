package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Order_GDVO {
	
	private long or_gd_key; // 상품_주문_식별자
	private int price; // 상품_주문_가격
	private int qntty; // 상품_주문_수량
	private int savings; // 상품_주문_적립금
	private int rtrn_exchn; // 상품_주문_교환반품 (0:완료, 1:교환, 2:반품)
	private Date rtrn_exchn_date; // 상품_주문_교환반품일자
	private long order_num; // 주문_번호
	private long goods_num; // 상품_번호
	private int gd_details; // 상품_상세옵션 (상품 카테고리별 번호)

}
