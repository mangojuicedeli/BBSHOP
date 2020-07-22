package com.bbshop.bit.service;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.MoreDetailsVO;
import com.bbshop.bit.mapper.MemberMapper;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Inject
    PasswordEncoder passwordEncoder;
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void register(MemberVO vo) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		
		if (vo.getPHONE().equals("kakao")) {
			vo.setMEMBER_PW("kakao");
		} else {
			String encPassword = passwordEncoder.encode(vo.getMEMBER_PW());
	        vo.setMEMBER_PW(encPassword);
		}
		sqlSession.getMapper(MemberMapper.class);
		mapper.insertMember(vo);
	}
	
	public void moreDetailsRegister(MoreDetailsVO md) {
		MemberMapper mapper= sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);
		mapper.moreDetailsRegister(md);
	}
	
	public String memberLogin(HashMap<String,String> map, String toPage) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);
		
		if (mapper.memberLogin(map) == 1) {
			if (toPage.equals("goShop")) { return "shopping_main.do"; }
			if (toPage.equals("goCommunity")) { return "community_main.do"; }
		}
		return "index.do";
	}
	
	public long getUser_key(MemberVO vo) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);
		return mapper.getUser_key(vo);
	}
	
	public String memberPw(MemberVO member) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);
		return mapper.memberPw(member);
	}

	public int getId(MemberVO vo) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);
		return mapper.getId(vo);
	}
	
	public int getNickname(MemberVO vo) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);
		return mapper.getNickname(vo);
	}

	@Override
	public MemberVO isExsist() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO getMemberInfo(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteMemberInfo(String id, String pw) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modify(MemberVO member) {
		// TODO Auto-generated method stub

	}

	@Override
	public MemberVO getMemberInfo(long user_key) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		sqlSession.getMapper(MemberMapper.class);		
		return mapper.getMemberInfo(user_key);
	}

	@Override
	public void updateMemberInfoAfterOrder(MemberVO user) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		mapper.updateMemberInfoAfterOrder(user);
	}

}
