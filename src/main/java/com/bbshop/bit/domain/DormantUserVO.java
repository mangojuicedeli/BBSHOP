package com.bbshop.bit.domain;

import lombok.Data;

@Data
public class DormantUserVO {
	private int RN;
	private long USER_KEY;
	private String MEMBER_ID;
	private String GRADE;
	private int FLAG;
	private String WI_DATE;
	private String REASON;
}
