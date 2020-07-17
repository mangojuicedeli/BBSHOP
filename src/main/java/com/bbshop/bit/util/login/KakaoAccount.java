package com.bbshop.bit.util.login;

import lombok.Data;

@Data
public class KakaoAccount {

	private long id;
	private KakaoProfile profile;
	private String email;
	private String age_range;
	private String birth;
	private String birthyear;
	private String gender;
	private String phone_number;
	private String ci;
}
