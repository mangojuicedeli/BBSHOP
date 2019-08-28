package com.bbshop.bit.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.PageDTO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.service.FAQService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class FAQController {
	
	@Autowired
	private FAQService faqservice;
	
	@Autowired
	private HttpSession session;


	@GetMapping("/faq_list.do")
	public String list(PagingVO pag, Model model) {
		
//		session.setAttribute("nickname", "슈퍼맨");
		
		String nickname = (String)session.getAttribute("nickname");
		
//		log.info("list: " + pag);
//		model.addAttribute("list", faqservice.FAQ_getList(pag));
		
		int total = faqservice.getTotal(pag);
		
		log.info("total: " + total);
		
		model.addAttribute("pageMaker", new PageDTO(pag, total));
		model.addAttribute("nickname", nickname);
		
		return "shoppingMall/customerService/faq";
	}
	// faq 목록 페이지 - ajax 데이터 뿌려주기 
	@RequestMapping(value="/faqList_Ajax.do", consumes="application/json")
	@ResponseBody
	public Map<String, Object> faqList_Ajax(@RequestBody Map<String, Object> map){
		log.info("Controller...faqList_Ajax");

		PagingVO pagingVO = new PagingVO();
		pagingVO.setPageNum((int) map.get("pageNum"));
		pagingVO.setAmount((int) map.get("amount"));
		pagingVO.setKeyword((String) map.get("keyword"));
		pagingVO.setType((String) map.get("type"));

		String faq_category = (String) map.get("faq_category");

		Map<String,Object> faqMap = new HashMap<>();
		
		List<FAQVO> faqList;
		int total = 0;
		
		if(faq_category.equals("전체보기")) {
			faqList = faqservice.FAQ_getList(pagingVO);
			total = faqservice.getTotal(pagingVO);
		}
		else if(faq_category.equals("변경/취소")) {
			faqList = faqservice.cancel(pagingVO);
			total = faqservice.getCancelCount(pagingVO);
		}
		else if(faq_category.equals("교환/반품")) {
			faqList = faqservice.trade(pagingVO);
			total = faqservice.getTradeCount(pagingVO);
		}
		else if(faq_category.equals("주문/조회")) {
			faqList = faqservice.order(pagingVO);
			total = faqservice.getOrderCount(pagingVO);
		}
		else {
			faqList = faqservice.question(pagingVO);
			total = faqservice.getQuestionCount(pagingVO);
		}
		log.info("리스트출력");
		log.info(faqList);

		
		faqMap.put("faqList", faqList);

		faqMap.put("total", total);

		return faqMap;
	}

	@GetMapping("/faq_get.do")
	public String get(@RequestParam("FAQ_NUM") long FAQ_NUM, Model model) {
	
		model.addAttribute("board", faqservice.FAQ_get(FAQ_NUM));
		
		return "shoppingMall/customerService/faq_detail";
	}
	
	@GetMapping("/cancel.do")
		public String cancel(PagingVO pag, Model model) {
		if(pag == null) {
			pag = new PagingVO();
		}
		log.info("list: " + pag);
		model.addAttribute("list", faqservice.cancel(pag));
		//model.addAttribute("pageMaker", new PageDTO(pag, 123));
		
		int canceltotal = faqservice.getCancelCount(pag);
		
		log.info("cancel total: " + canceltotal);
		
		model.addAttribute("pageMaker", new PageDTO(pag, canceltotal));
		model.addAttribute("page", "/cancel.do");
		
		return "shoppingMall/customerService/faq";
	}
	@GetMapping("/trade.do")
		public String trade(PagingVO pag, Model model) {
		if(pag == null) {
			pag = new PagingVO();
		}
		log.info("list: " + pag);
		model.addAttribute("list", faqservice.trade(pag));
		//model.addAttribute("pageMaker", new PageDTO(pag, 123));
		
		int tradetotal = faqservice.getTradeCount(pag);
		
		log.info("tarde total: " + tradetotal);
		
		model.addAttribute("pageMaker", new PageDTO(pag, tradetotal));
		model.addAttribute("page", "/trade.do");
		
		return "shoppingMall/customerService/faq";
	}
	
	@GetMapping("/order.do")
		public String order(PagingVO pag, Model model) {
		if(pag == null) {
			pag = new PagingVO();
		}
		log.info("list: " + pag);
		model.addAttribute("list", faqservice.order(pag));
		//model.addAttribute("pageMaker", new PageDTO(pag, 123));
		
		int ordertotal = faqservice.getOrderCount(pag);
		
		log.info("order total: " + ordertotal);
		
		model.addAttribute("pageMaker", new PageDTO(pag, ordertotal));
		model.addAttribute("page", "/order.do");	
		
		return "shoppingMall/customerService/faq";
	}
	
	@GetMapping("/question.do")
		public String question(PagingVO pag, Model model) {
		if(pag == null) {
			pag = new PagingVO();
		}
		log.info("list: " + pag);
		model.addAttribute("list", faqservice.question(pag));
		//model.addAttribute("pageMaker", new PageDTO(pag, 123));
		
		int questiontotal = faqservice.getQuestionCount(pag);
		
		log.info("question total: " + questiontotal);
		
		model.addAttribute("pageMaker", new PageDTO(pag, questiontotal));
		model.addAttribute("page", "/question.do");

		
		return "shoppingMall/customerService/faq";
	}
	
	
}
