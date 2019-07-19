package com.bbshop.bit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbshop.bit.domain.SavingsVO;
import com.bbshop.bit.service.MyPageService;

@Controller
@RequestMapping("*.mp")
public class MyPageController {

	@Autowired
	private MyPageService myPageService;
	
	@RequestMapping("/savings.mp")
	public String getSavings(Model model, String user_key) {
		
		int savings_sum = 0;
		
		List<SavingsVO> savings_list = myPageService.getSavingsList(1);
		
		for (int i = 0; i < savings_list.size(); i++) {
									
			savings_sum += savings_list.get(i).getOr_savings();
		}
		
		model.addAttribute("savings_list", savings_list);
		model.addAttribute("savings_sum", savings_sum);
		
		return "shoppingMall/mypage/mypage";
	}
}
