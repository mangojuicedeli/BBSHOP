package com.bbshop.bit.util.security;

import javax.ws.rs.NotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;

public class CustomAuthenticationProvider implements AuthenticationProvider {
	
	@Autowired
	PasswordEncoder passwordEncoder;

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
	
		String username = (String)authentication.getPrincipal();
		String password = (String)authentication.getCredentials();
		
		CustomUserDetailsService customUserDetails = new CustomUserDetailsService();
		UserDetails customUser = customUserDetails.loadUserByUsername(username);
		
		if (customUser == null) { // 비밀번호가 틀리다면
			throw new NotFoundException();
		}
		
		return new UsernamePasswordAuthenticationToken(username, password, customUser.getAuthorities());
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return false;
	}

}
