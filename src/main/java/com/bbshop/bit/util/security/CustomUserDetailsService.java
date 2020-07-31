package com.bbshop.bit.util.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.bbshop.bit.domain.UserVO;
import com.bbshop.bit.mapper.MemberMapper;
import com.bbshop.bit.util.security.domain.CustomUser;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		UserVO vo = memberMapper.read(username);
		log.info("접속 사용자 : " + vo.toString());
		
		return vo == null ? null : new CustomUser(vo);
	}

}
