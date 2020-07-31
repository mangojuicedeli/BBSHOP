package com.bbshop.bit.util.login;

import org.springframework.security.oauth2.client.registration.ClientRegistration;
import org.springframework.security.oauth2.core.AuthorizationGrantType;
import org.springframework.security.oauth2.core.ClientAuthenticationMethod;

public enum CustomOAuthProvider {
	
    KAKAO {
        @Override
        public ClientRegistration.Builder getBuilder() {
            return getBuilder("kakao", ClientAuthenticationMethod.POST)
                    .scope("profile") // 요청할 권한 (사용자 정보)
                    .authorizationUri("https://kauth.kakao.com/oauth/authorize") // 인증 코드 요청 주소
                    .tokenUri("https://kauth.kakao.com/oauth/token") // 엑세스 토큰 요청 주소
                    .userInfoUri("https://kapi.kakao.com/v2/user/me") // 카카오 사용자 정보 API 요청 주소
                    .clientId("8ac53956767ae67d81086241a1a789b1") // 클라이언트 키
                    .userNameAttributeName("id") // 카카오 사용자 정보 API의 응답에서 얻어올 id
                    .clientName("Kakao"); // 스프링에서 인식할 OAuth2 제공자
        }
    };

    private static final String DEFAULT_LOGIN_REDIRECT_URL = "{baseUrl}/login/oauth2/code/{registrationId}";

    protected final ClientRegistration.Builder getBuilder(String registrationId, ClientAuthenticationMethod method) {

        ClientRegistration.Builder builder = ClientRegistration.withRegistrationId(registrationId);
        builder.clientAuthenticationMethod(method);
        builder.authorizationGrantType(AuthorizationGrantType.AUTHORIZATION_CODE);
        builder.redirectUriTemplate(CustomOAuthProvider.DEFAULT_LOGIN_REDIRECT_URL);
        return builder;
    }

    public abstract ClientRegistration.Builder getBuilder();
}
