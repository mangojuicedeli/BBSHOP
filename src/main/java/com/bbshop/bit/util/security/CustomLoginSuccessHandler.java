package com.bbshop.bit.util.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		List<String> roleNames = new ArrayList<>();
		authentication.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});
		log.info("권한 목록 : " + roleNames.toString());
		
		// admin 리다이렉트 설정
		if (roleNames.contains("ROLE_ADMIN")) {
			log.info("admin 접속");
			response.sendRedirect("/shopping_main.do");
		}
		
		// member 리다이렉트 설정
		if (roleNames.contains("ROLE_USER")) {
			log.info("user 접속");
			response.sendRedirect("/shopping_main.do");
		}
	}
}
