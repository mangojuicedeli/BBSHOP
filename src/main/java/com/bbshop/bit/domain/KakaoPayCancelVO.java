package com.bbshop.bit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class KakaoPayCancelVO {
	
    //response
    private String aid, tid, cid;
    private String status, partner_order_id, partner_user_id, payment_method_type;
    private AmountVO amount, canceled_amount, cancel_available_amount;
    private String item_name, item_code, payload;
    private Integer quantity;
    private Date created_at, approved_at, canceled_at;

}
