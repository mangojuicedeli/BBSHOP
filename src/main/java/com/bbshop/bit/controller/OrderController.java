package com.bbshop.bit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bbshop.bit.domain.AddrVO;
import com.bbshop.bit.domain.Cart_GDVO;
import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.Order_GDVO;
import com.bbshop.bit.domain.SavingsVO;
import com.bbshop.bit.service.CartService;
import com.bbshop.bit.service.GoodsService;
import com.bbshop.bit.service.KakaoPayService;
import com.bbshop.bit.service.MemberService;
import com.bbshop.bit.service.MyPageService;
import com.bbshop.bit.service.OrderService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class OrderController {	
	
	@Autowired(required=true)
	private OrderService orderService;
	
	// goods에 대한 정보(GoodsVO)를 가져오기 위한 GoodsVO
	@Autowired(required=true)
	private GoodsService goodsService;
	
	@Autowired(required=true)
	private MemberService memberService;
	
	@Autowired(required=true)
	private CartService cartService;
	
	@Autowired(required=true)
	private KakaoPayService kakaopay;
	
	// 회원 user_key를 가져오기 위한 HttpSession
	@Autowired
	private HttpSession session;
	
	// 회원 주소록을 가져오기 위한 MyPageService
	@Autowired(required=true)
	MyPageService mypageService;
	
	List<GoodsVO> goodsList;
	List<Object> optionList;
	List<Cart_GDVO> cartList;
	
	// 단일상품 구매하기 (장바구니 테이블을 거치지 않음)
	@RequestMapping(value="/order_good.do", method=RequestMethod.GET)
	public String order_good(@RequestParam int category, @RequestParam long goods_num,
								@RequestParam int option1, @RequestParam int option2, @RequestParam int qty,  Model model) {
		log.info("Controller...order_good");
		log.info("category : " + category + ", option1 : " + option1 + ", option2 : " + option2);
		log.info("goods_num : " + goods_num + ", qty : " + qty);
		
		goodsList = new ArrayList<GoodsVO>();
		optionList = new ArrayList<Object>();
		cartList = new ArrayList<Cart_GDVO>();
		
		// goods_num으로  GOODS 테이블에 접근해, GoodsVO를 가져온다. 가져온 GoodsVO를 goodsList에 add!
		GoodsVO goodsVO = goodsService.getGoodsInfo(goods_num);
		goodsList.add(goodsVO);
		
		// optionNumber
		long optionNumber;
				
		// 상품 상세옵션vo를 가져와서, optionList에 add!
		if(category == 1) {
			Gd_GloveVO gd_glove = orderService.getGloveOption(goods_num, option1, option2);
			optionNumber = gd_glove.getGLOVE_NUM();
			optionList.add(gd_glove);
		}
		else if(category == 2) {
			Gd_BatVO gd_bat = orderService.getBatOption(goods_num, option1);
			optionNumber = gd_bat.getBAT_NUM();
			optionList.add(gd_bat);
		}
		else if(category == 3) {
			Gd_UniformVO gd_uniform = orderService.getUniformOption(goods_num, option1);
			optionNumber = gd_uniform.getUNIFORM_NUM();
			optionList.add(gd_uniform);
		}
		else if(category == 4) {
			Gd_ShoesVO gd_shoes = orderService.getShoesOption(goods_num, option1, option2);
			optionNumber = gd_shoes.getSHOES_NUM();
			optionList.add(gd_shoes);
		}
		else {
			Gd_BallVO gd_ball = orderService.getBallOption(goods_num, option1);
			optionNumber = gd_ball.getBALL_NUM();
			optionList.add(gd_ball);
		}
		
		long user_key = (long)session.getAttribute("member");
		MemberVO user = memberService.getMemberInfo(user_key);

		List<AddrVO> userAddr = mypageService.getAddrList(user_key);

		// Cart_GDVO 잠시 빌리기...?
		Cart_GDVO orderGood = new Cart_GDVO();
		orderGood.setPRICE((int) goodsVO.getPrice());
		orderGood.setQNTTY(qty);
		orderGood.setTOTALPRICE(orderGood.getPRICE()*orderGood.getQNTTY());
		
		int totalPrice = orderGood.getTOTALPRICE();

		int savings = goodsService.getSavings(totalPrice, user_key);
		orderGood.setSAVINGS(savings);
		
		cartList.add(orderGood);
		

		int shipping_fee = cartService.calcShipping_fee(totalPrice);
		int allPrice = totalPrice + shipping_fee;
		
		model.addAttribute("goodsList", goodsList);
		model.addAttribute("optionList", optionList);
		model.addAttribute("orderList", cartList);
		model.addAttribute("allPrice" , allPrice);
		model.addAttribute("totalPrice" , totalPrice);
		model.addAttribute("user", user);
		model.addAttribute("userAddr", userAddr);
		model.addAttribute("shipping_fee", shipping_fee);
//		model.addAttribute("from", "good");
//		model.addAttribute("qty", orderGood.getQNTTY());
//		model.addAttribute("optionNumber", optionNumber);
		
		return "shoppingMall/order/order";
	}
	
	// 쇼핑몰 - 주문 - 주문하기
	@RequestMapping("/order_cart.do")
	public String order_cart(Model model, @RequestParam("GOODS_NUM_LIST") String list, 
			 @RequestParam("SHIPPING_FEE") int shipping_fee) {
		
		String[] goods_num_list = list.split(",");
		
		long user_key = (long)session.getAttribute("member");
		MemberVO user = memberService.getMemberInfo(user_key);
		
		goodsList = new ArrayList<GoodsVO>();
		List<Object> optionList = new ArrayList<Object>();
		int totalPrice = 0, allPrice = 0;
		
		// jsp에서 구매 체크한 goods_num을 불러와 해당 cartList에 입력
		cartList = orderService.getCheckedCartList(goods_num_list, user_key);
		
		// totalPrice 넣어주는 과정
		for(int i=0;i<cartList.size();i++) {
			Cart_GDVO temp = cartList.get(i);
			temp.setTOTALPRICE(temp.getPRICE()*temp.getQNTTY());
			cartList.set(i, temp);
			totalPrice += cartList.get(i).getTOTALPRICE();
		}
		
		allPrice = totalPrice + shipping_fee;
		
		// goods 가져와서 goodsList에 넣어주는 부분
		 for (String goods_num : goods_num_list ){
			 goodsList.add(cartService.getGoods(Long.parseLong(goods_num)));
		 }
		 
		// 상품 옵션 불러오는 부분
		for(int i=0; i<goodsList.size();i++) {
			switch(goodsList.get(i).getCategory()) {
			
			// 글러브
			case 1 : 
				optionList.add(orderService.getOptionListGlove(cartList.get(i).getGD_DETAILS()));
				break;
			
			// 배트
			case 2 : 
				optionList.add(orderService.getOptionListBat(cartList.get(i).getGD_DETAILS()));
				break;
			
			// 유니폼
			case 3 : 
				optionList.add(orderService.getOptionListUniform(cartList.get(i).getGD_DETAILS()));
				break;
				
			// 야구화
			case 4 : 
				optionList.add(orderService.getOptionListShoes(cartList.get(i).getGD_DETAILS()));
				break;
				
			// 야구공
			case 5 : 
				optionList.add(orderService.getOptionListBall(cartList.get(i).getGD_DETAILS()));
				break;
			}

		}

		List<AddrVO> userAddr = mypageService.getAddrList(user_key);
		System.out.println("userAddr.toString() : " + userAddr.toString());
		
		model.addAttribute("goodsList",goodsList);
		model.addAttribute("orderList",cartList);
		model.addAttribute("optionList", optionList);
		model.addAttribute("totalPrice",totalPrice);
		model.addAttribute("allPrice",allPrice);
		model.addAttribute("shipping_fee", shipping_fee);
		model.addAttribute("userAddr", userAddr);
		model.addAttribute("user", user);
//		model.addAttribute("from", "cart");
//		model.addAttribute("qty", "");
//		model.addAttribute("optionNumber", "");
		
		return "shoppingMall/order/order";
}
	
    
    @RequestMapping(value="/kakaoPay.do", method=RequestMethod.GET)
    public void kakaoPayGet() {
        
    }
    
    @RequestMapping(value="/kakaoPay.do", method=RequestMethod.POST)
    public String kakaoPay(Model model, OrderVO order, @RequestParam("GOODS_NUM_LIST") String list, 
    		@RequestParam("shipping_fee") int shipping_fee, @RequestParam("useSavings") long useSavings) {
    	System.out.println("kakaoPay post............................................");

    	System.out.println("kakaoPay.do 컨트롤러에 들어올 때의 OrderVO : " + order.getSavings());
    	
    	long user_key = (long)session.getAttribute("member");

    	MemberVO user = memberService.getMemberInfo(user_key);
    	String nickname = (String)session.getAttribute("nickname");

    	String[] goods_num_list = list.split(",");
    	order.setPymntamnt(order.getPymntamnt() - useSavings);
    	int allPrice = (int)order.getPymntamnt();

    	order.setUser_key(user_key);
    	
    	long savings_curr = 0;
    	String grade_curr = user.getGRADE();

    	goodsList = new ArrayList<GoodsVO>();
    	
    	// 등급에 따른 적립금 업데이트
    	if (grade_curr.equals("bronze")) {
    		savings_curr = ((long)allPrice / 100) * 3;
    	} else if (grade_curr.equals("silver")) {
    		savings_curr = ((long)allPrice / 100) * 5;
    	} else if (grade_curr.equals("gold")) {
    		savings_curr = ((long)allPrice / 100) * 7;
    	} else {
    		savings_curr = ((long)allPrice / 100) * 10;
    	}

    	order.setSavings(savings_curr);

    	// jsp에서 구매 체크한 goods_num을 불러와 해당 cartList에 입력
    	cartList = orderService.getCheckedCartList(goods_num_list, user_key);

    	// goods 가져와서 goodsList에 넣어주는 부분
    	for (String goods_num : goods_num_list ){
    		goodsList.add(cartService.getGoods(Long.parseLong(goods_num)));
    	}
    	
//    	Cart_GDVO cartVO;
//    	Order_GDVO order_gd = null;

    	// 한가지 상품을 구매하는 경우 -> 상품명. 한가지 이상의 상품을 구매하는 경우 -> 1상품명 + 외 n개
    	if(goods_num_list.length == 1) {
    		order.setItems(goodsList.get(0).getName());
    	} else {
    		order.setItems(goodsList.get(0).getName()+"외"+((goods_num_list.length)-1)+"개");
    	}

    	// 주문 등록
    	int res = orderService.insertOrder(order);

    	if(res == 1) {
    		System.out.println("주문이 등록되었습니다.");
    	} else {
    		System.out.println("주문 등록에 실패했습니다.");
    	}

    	// 방금 order테이블에 insert한 order_num
    	long order_num = orderService.getLastOrderNum(order.getUser_key());
    	
//    	// 단일상품 일 경우, order_gd테이블도 insert
//    	if(from.equals("good")) {
//    		order_gd.setOrder_num(order_num);
//    		orderService.insertOrderGD(order_gd);
//    	}

    	return "redirect:" + kakaopay.kakaoPayReady(goodsList, cartList, allPrice, list, order_num, shipping_fee, order.getUser_key(),useSavings);
    }
    
    @RequestMapping(value="/kakaoPaySuccess.do", method=RequestMethod.GET)
    public String kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model,
    		@RequestParam("allPrice") int allPrice, @RequestParam("list") String list, 
    		@RequestParam("order_num") long order_num, @RequestParam("shipping_fee") int shipping_fee,
    		@RequestParam("useSavings") long useSavings) {
    	System.out.println("kakaoPaySuccess get............................................");
    	
    	long user_key = (long)session.getAttribute("member");

    	String[] goods_num_list = list.split(",");

    	goodsList = new ArrayList<GoodsVO>();
    	int totalPrice = 0;
    	
//    	if(from.equals("cart")) {

    	// jsp에서 구매 체크한 goods_num을 불러와 해당 cartList에 입력
    	cartList = orderService.getCheckedCartList(goods_num_list, user_key);

    	// goods 가져와서 goodsList에 넣어주는 부분
    	for (String goods_num : goods_num_list ){
    		goodsList.add(cartService.getGoods(Long.parseLong(goods_num)));
    	}   	

    	// 각 상품별 결제 금액 set
    	for (int i = 0; i < cartList.size(); i++) {
    		Cart_GDVO temp = cartList.get(i);
    		temp.setTOTALPRICE(temp.getPRICE()*temp.getQNTTY());
    		cartList.set(i, temp);
    		totalPrice += cartList.get(i).getTOTALPRICE();
    	}

    	OrderVO order = orderService.getOrderList(order_num);
    	String[] addr_list = order.getOr_addr().split(",");

    	// 주문한 개수만큼 재고에서 빼기
    	for(int i=0; i<goodsList.size();i++) {
    		switch(goodsList.get(i).getCategory()) {

    		// 글러브
    		case 1 : 
    			orderService.updateGloveStock(cartList.get(i).getQNTTY(), cartList.get(i).getGD_DETAILS());
    			break;

    			// 배트
    		case 2 : 
    			orderService.updateBatStock(cartList.get(i).getQNTTY(), cartList.get(i).getGD_DETAILS());
    			break;

    			// 유니폼
    		case 3 : 
    			orderService.updateUniformStock(cartList.get(i).getQNTTY(), cartList.get(i).getGD_DETAILS());
    			break;

    			// 야구화
    		case 4 : 
    			orderService.updateShoesStock(cartList.get(i).getQNTTY(), cartList.get(i).getGD_DETAILS());
    			break;

    			// 야구공
    		case 5 : 
    			orderService.updateBallStock(cartList.get(i).getQNTTY(), cartList.get(i).getGD_DETAILS());
    			break;
    		}
    		System.out.println("재고 업데이트 완료!");
    	}

    	// 주문 성공시, 적립금 추가 및 누적 금액 변화, 그에 따른 등급 변화
    	MemberVO user = memberService.getMemberInfo(user_key);

    	// 주문한 상품의 이름 바인딩
    	String order_items = goodsList.get(0).getName();

    	long savings_curr = 0;
    	int total_buy_curr = user.getTOTAL_BUY();
    	String grade_curr = user.getGRADE();
    	long savings_used = 0; // 임시로 사용한 적립금 변수를 만듬. 아직 미구현.

    	// 등급에 따른 적립금 업데이트
    	if (grade_curr.equals("bronze")) {
    		savings_curr = ((long)allPrice / 100) * 3;
    	} else if (grade_curr.equals("silver")) {
    		savings_curr = ((long)allPrice / 100) * 5;
    	} else if (grade_curr.equals("gold")) {
    		savings_curr = ((long)allPrice / 100) * 7;
    	} else {
    		savings_curr = ((long)allPrice / 100) * 10;
    	}

    	user.setSAVINGS(user.getSAVINGS() + savings_curr);

    	// 적립금 테이블 insert
    	SavingsVO savings = new SavingsVO(savings_curr, order_num, savings_used, order_items);
    	mypageService.insertSavings(savings, user_key);

    	// 누적 금액 업데이트
    	total_buy_curr += allPrice;
    	user.setTOTAL_BUY(total_buy_curr);

    	// 등급 업데이트
    	if (total_buy_curr < 200000) {	
    		user.setGRADE("bronze");
    	} else if (total_buy_curr < 500000) {
    		user.setGRADE("silver");
    	} else if (total_buy_curr < 1000000) {
    		user.setGRADE("gold");
    	} else {
    		user.setGRADE("diamond");
    	}

    	memberService.updateMemberInfoAfterOrder(user);
    	
//    	if(from.equals("cart")) {

    	// order_gd 테이블에 insert!
    	for(int i=0;i<cartList.size();i++) {
    		Order_GDVO order_gd = new Order_GDVO();
    		order_gd.setPrice(cartList.get(i).getTOTALPRICE());
    		order_gd.setQntty(cartList.get(i).getQNTTY());
    		order_gd.setSavings(cartList.get(i).getSAVINGS());
    		order_gd.setOrder_num(order_num);
    		order_gd.setGoods_num(cartList.get(i).getGOODS_NUM());
    		order_gd.setGd_details(cartList.get(i).getGD_DETAILS());

    		orderService.insertOrderGD(order_gd);
    	}

    	// kakaoPayInfo로부터 return 받는 tid를 update
    	int res = orderService.updateTid(kakaopay.kakaoPayInfo(pg_token, allPrice, order_num, order.getUser_key()).getTid(), order_num);

    	if(res == 1) {
    		System.out.println("tid가 업데이트 되었습니다.");
    	} else {
    		System.out.println("tid 업데이트에 실패했습니다.");
    	}
    	
    	// 적립금을 사용한 경우
    	if(useSavings != 0) {
    		// savings 테이블 -> savings_used 업데이트
    		orderService.updateSavings_used(useSavings, order_num);
    		// sh_user 테이블 -> savings 업데이트
    		orderService.update_usedUser_savings(useSavings, user_key);
    	}

    	model.addAttribute("goodsList",goodsList);
    	model.addAttribute("orderList",cartList);
    	model.addAttribute("order",order);
    	model.addAttribute("addr_list",addr_list);
    	model.addAttribute("shipping_fee",shipping_fee);
    	model.addAttribute("totalPrice",totalPrice);
    	model.addAttribute("useSavings", useSavings);

    	return "shoppingMall/order/order_confirmation";
    }
    
    // 카카오페이 결제 시도 실패 시
    @RequestMapping("/pay.do")
    public String pay(@RequestParam("order_num") long order_num) {
    	System.out.println("결제 실패");
    	
    	int res = orderService.deleteOrder(order_num);
    	
    	if(res == 1) {
    		System.out.println("삭제 완료");
    	} else {
    		System.out.println("삭제 실패");
    	}
    	
    	return "shoppingMall/main/shopping_main";
        
    }
    
    // 사용자 측에서 결제 중 취소 시
    @RequestMapping("/kakaoPayCancel.do")
    public String kakaoPayCancel(@RequestParam("order_num") long order_num) {
    	System.out.println("결제 취소");
    	
    	int res = orderService.deleteOrder(order_num);
    	
    	if(res == 1) {
    		System.out.println("삭제 완료");
    	} else {
    		System.out.println("삭제 실패");
    	}
    	
    	return "shoppingMall/main/shopping_main";
        
    }
    
    // 시간초과 등으로 인한 fail
    @RequestMapping("/kakaoPaySuccessFail.do")
    public String kakaoPaySuccessFail(@RequestParam("order_num") long order_num) {
    	System.out.println("결제 오류");
    	
    	int res = orderService.deleteOrder(order_num);
    	
    	if(res == 1) {
    		System.out.println("삭제 완료");
    	} else {
    		System.out.println("삭제 실패");
    	}
    	
    	return "shoppingMall/main/shopping_main";  
    }
    
    // 사용자가 결제 이후 취소 시
    @RequestMapping("/kakaoPayCancelOrder.do")
    public String kakaoPayCancelOrder(@RequestParam("order_num") long order_num,
    		Model model) {
    	System.out.println("결제건을 취소합니다");
    	
    	OrderVO order = orderService.getOrderList(order_num);
    	
    	int allPrice = (int)order.getPymntamnt();
    	
    	String[] addr_list = order.getOr_addr().split(",");
    	
    	// 주문 취소 시 주문 상태 = 취소, 주문_취소 = 취소 o 로 변경
    	orderService.updateCancelStts(order_num);
    	
    	// 결제 취소한 상품의 개수만큼 재고 추가 -> 나중 구현
    	/*
    	for(int i=0; i<goodsList.size();i++) {
			switch(goodsList.get(i).getCategory()) {
			
			// 글러브
			case 1 : 
				orderService.updateGloveStock(cartList.get(i).getQNTTY(), cartList.get(i).getGD_DETAILS());
				break;
			
			// 배트
			case 2 : 
				orderService.updateBatStock(cartList.get(i).getQNTTY(), cartList.get(i).getGD_DETAILS());
				break;
			
			// 유니폼
			case 3 : 
				orderService.updateUniformStock(cartList.get(i).getQNTTY(), cartList.get(i).getGD_DETAILS());
				break;
				
			// 야구화
			case 4 : 
				orderService.updateShoesStock(cartList.get(i).getQNTTY(), cartList.get(i).getGD_DETAILS());
				break;
				
			// 야구공
			case 5 : 
				orderService.updateBallStock(cartList.get(i).getQNTTY(), cartList.get(i).getGD_DETAILS());
				break;
			}
			System.out.println("재고 업데이트 완료!");
		}
		*/
    	
    	
    	// 결제 취소하려는 주문의 tid와 구매 가격이 일치해야 취소 가능
    	model.addAttribute("info", kakaopay.kakaoPayCancel(allPrice, order.getTid()));
    	model.addAttribute("order",order);
    	model.addAttribute("addr_list",addr_list);
    	
    	return "shoppingMall/order/order_cancellation";  

    }
    
	@ResponseBody
	@RequestMapping(value="useSavings.do" , method=RequestMethod.GET)
	public String useSavings(@RequestParam("useSavings") long useSavings, @RequestParam("mySavings") long mySavings,
			@RequestParam("allPrice") int allPrice, Model model, HttpServletRequest request) {
		
		// 1. 총 사용 가능 적립금을 불러온다
		// 2. 1 - useSavings < 0 -> fail
		// 3. 사용 가능 시 총 결제금액 - useSavings의 값을 리턴해준다
		int success = 0;
		
		if(mySavings - useSavings < 0) {
			success = 0;
		}
		else {
			success = 1;
		}
		
		allPrice -= useSavings;
		
		if(success == 1) {
			return Integer.toString(allPrice);
		} else
			return Integer.toString(0);
	}
}
