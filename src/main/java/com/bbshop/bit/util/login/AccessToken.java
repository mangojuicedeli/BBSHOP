package com.bbshop.bit.util.login;

import lombok.Data;

@Data
public class AccessToken {

	private String token_type = "bearer";
	private final String access_token;
	private final int expires_in;
}
