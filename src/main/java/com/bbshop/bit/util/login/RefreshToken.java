package com.bbshop.bit.util.login;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class RefreshToken {

	private String refrest_token;
	private int refresh_token_expires_in;
}
