package com.bbshop.bit.util.login;

import lombok.Data;

@Data
public class KakaoProfile {

	private String nickname;
	private String profile_image;
	private String thumbnail_image_url;
	private String profile_needs_agreement;
}
