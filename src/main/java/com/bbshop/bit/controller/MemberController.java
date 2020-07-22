package com.bbshop.bit.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.MoreDetailsVO;
import com.bbshop.bit.service.MemberService;
import com.bbshop.bit.service.UserMailSendService;
import com.bbshop.bit.util.login.KakaoAPI;
import com.bbshop.bit.util.login.KakaoAccount;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MemberController {
	
	private int noAccountCount;
	
	@Inject
    PasswordEncoder passwordEncoder;
	
	@Autowired(required=true)
	MemberService memberService;
	
	@Autowired
	private UserMailSendService mailsender;
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session, HttpServletRequest request) throws Exception {
		
		String toPage = request.getParameter("toPage"); // hidden 은 value값을 가져와야 한다.
		String db_pw = memberService.memberPw(vo); // 암호화되어 저장된 비밀번호를 받아와야 한다. 매퍼에서는 where아이디로 비밀번호를 받아온다.
		
		// 암호화된 비밀번호를 복호화 하여 로그인시 회원이 작성한 비밀번호와 매치 시켜서 비밀번호 일치 하는지 본다. 
		if (passwordEncoder.matches(vo.getMEMBER_PW(), db_pw)) {
			vo.setMEMBER_PW(db_pw);
		} else {
			throw new Exception("비밀번호 불일치");
		}
		
		//맵에다가 아이디와 pw를 넣어준다
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("MEMBER_ID", vo.getMEMBER_ID());
		map.put("MEMBER_PW", vo.getMEMBER_PW());
		
		//맵과 무슨 버튼을 눌렀는지 를 서비스를 통해서 넣어준다.
		String resultUrl = memberService.memberLogin(map, toPage);
		if (resultUrl.equals("shopping_main.do") || resultUrl.equals("community_main.do")) {
			session.setAttribute("member", memberService.getUser_key(vo));
			session.setAttribute("nickname", memberService.getMemberInfo(memberService.getUser_key(vo)).getNICKNAME());
		}
		
		return "redirect:/" + resultUrl;
	}
	
	// 비회원 로그인
	@RequestMapping(value="/noAccount.do", method=RequestMethod.GET)
	public String noAccount(HttpServletRequest request,HttpSession session ,@RequestParam("toPage") String toPage) {
		String result = "";
		noAccountCount++;
		
		if (toPage.equals("goShop")) {
			result = "redirect:/shopping_main.do";
		} else {
			result = "redirect:/community_main.do";
		}
		session.setAttribute("member", (long)00);
		session.setAttribute("nickname", "noAccount" + noAccountCount);
		
		return result;
	}
	
	// 카카오 로그인
	@RequestMapping(value="/login/kakao")
	public String kakaoLogin(String code, HttpSession session) {
				
		KakaoAPI kakaoAPI = new KakaoAPI();
		// 전달 받은 인증 코드로 엑세스 토큰 받아 온다.
		String access_token = kakaoAPI.getAccessToken(code);
		// 엑세스 토큰을 통해 카카오 사용자 조회 API를 호출해서 카카오에 저장된 사용자 정보 얻어 온다.
		KakaoAccount user = kakaoAPI.getUserInfo(access_token);
		// 얻어온 사용자 정보 중 id와 nickname을 세션에 저장한다.
		session.setAttribute("member", user.getId());
		String nickname = user.getProfile().getNickname();
		if (nickname != null) session.setAttribute("nickname", nickname);
		session.setAttribute("access_token", access_token);
		
		return "redirect:/shopping_main.do";
	}
	
	// 카카오 로그아웃
	@RequestMapping(value="/logout/kakao")
	public String kakaoLogout(String access_token, HttpSession session) {
		
		try {
		// 커넥션 설정
			URL url = new URL("https://kapi.kakao.com/v1/user/logout");
            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
            conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "Bearer " + access_token);
		// 응답 데이터를 파싱해서 로그아웃된 카카오계정 id를 확인한다.	
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";
            while ((line = br.readLine()) != null) { result += line; }
            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);
            long id = element.getAsJsonObject().get("id").getAsLong();
            log.info("id : " + id);
			return "redirect:/home";
		} catch (IOException e){
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping(value="/register.do",method=RequestMethod.POST)
	public String register(Model model, MemberVO vo, HttpServletRequest request) {
		vo.setGRADE("bronze");
			
		try {
			memberService.register(vo);			
			return "shoppingMall/main/index";
		} catch (Exception e) {
			return "shoppingMall/main/index";
		}
	}
	@ResponseBody
	@RequestMapping(value="authEmail.do", method=RequestMethod.POST)
	public String authEmail(MemberVO vo , HttpServletRequest request){
		System.out.println(vo.toString());
		String key= "";
		key=mailsender.mailSendWithUserKey(vo.getMEMBER_ID(),vo.getMEMBER_ID(),request);
		System.out.println(key);
		return key;
	}
	
	@RequestMapping(value="moredetails.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String moredetails(MemberVO vo, MoreDetailsVO md, HttpServletRequest request) {
				
		vo.setGRADE("bronze"); // 등급 설정
		try {
			memberService.register(vo);
			long user_key=memberService.getUser_key(vo);
			System.out.println("vo user_key : " + user_key);
			
			md.setUSER_KEY(user_key);
			memberService.moreDetailsRegister(md);
			System.out.println("추가정보 등록 성공!");

			return "shoppingMall/main/index";
		} catch(Exception e) {
			
			System.out.println("회원등록 실패..");

			return "shoppingMall/main/index";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="check_id.do" , method=RequestMethod.GET)
	public String check_id(MemberVO vo) {
		System.out.println("중복체크할 아이디:"+vo.getMEMBER_ID());
		
		int temp = memberService.getId(vo);
		
		String result ="";
		System.out.println("중복체크가 끝났는가??"+result);
		if(temp==1) {
			result="success";
		}
		else {
			result="false";
		}
		
		return result;
		
	}
	@ResponseBody
	@RequestMapping(value="check_nickname.do" , method=RequestMethod.GET)
	public String check_nickname(MemberVO vo) {
		System.out.println("중복체크할 nickname:"+vo.getNICKNAME());
		
		int temp = memberService.getNickname(vo);
		
		String result ="";
		if(temp==1) {
			result="success";
		}
		else {
			result="false";
		}
		System.out.println("중복체크가 끝났는가??"+result);
		
		return result;
		
	}
}