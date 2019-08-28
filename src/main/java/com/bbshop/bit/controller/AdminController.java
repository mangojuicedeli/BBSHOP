package com.bbshop.bit.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bbshop.bit.domain.AdminPageDTO;
import com.bbshop.bit.domain.CommunityVO;
import com.bbshop.bit.domain.Criteria;
import com.bbshop.bit.domain.DormantUserVO;
import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.MoreDetailsVO;
import com.bbshop.bit.domain.OnetooneVO;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.Order_GDVO;
import com.bbshop.bit.domain.PageDTO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReportBoardVO;
import com.bbshop.bit.domain.ReviewVO;
import com.bbshop.bit.service.AdminService;
import com.bbshop.bit.service.CommunityService;
import com.bbshop.bit.service.MemberService;
import com.bbshop.bit.service.MyPageService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("*.do")
public class AdminController {
	
	@Autowired(required=false)
	AdminService adminService;
	
	@Autowired(required=false)
	MemberService memberService;
	
	@Autowired(required=false)
	MyPageService myPageService;
	
	@Autowired(required=false)
	CommunityService communityService;
	
	@RequestMapping("userlist.do")
	public String userList(Model model , Criteria cri,HttpServletRequest request) {
		List<MemberVO> userList = adminService.getAllMembers();
		System.out.println("유저 리스트 불러옴");
		System.out.println(userList);
		cri.setAmount(5);
		AdminPageDTO temp = new AdminPageDTO(cri,userList.size());
		
		model.addAttribute("PageMaker",temp);
		model.addAttribute("userList", userList);
		
		return "shoppingMall/admin/userlist";
	}
	
	@ResponseBody
	@RequestMapping(value="UserListPaging.do", consumes = "application/json", method= {RequestMethod.POST,RequestMethod.GET})
	public Map<String,Object> UserListPaging(Model model , Criteria cri,HttpServletRequest request) {
		
		List<MemberVO> userList = adminService.getAllMembers();
		System.out.println(userList);
		
		cri.setAmount(5);
		
		
		//post방식으로 넘어온 pageNum을 출력하고 그값을 criteria객체에 넣어준다.
			System.out.println("pageNum:"+request.getParameter("pageNum"));
			cri.setAmount(5);
			cri.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
	
		
		AdminPageDTO temp = new AdminPageDTO(cri,userList.size());
		System.out.println(temp);
		System.out.println(cri);
		//json으로 전달하기 위해 맵형식으로 바꿔준다.
		Map<String,Object> pagingList = new HashMap<String,Object>();
		pagingList.put("userList", userList);
		pagingList.put("PageMaker",temp);
		
		System.out.println(pagingList);
		return pagingList;
	}

	/* 의정 - 회원탈퇴 관리 */
	// admin - withdrawal.jsp
	@RequestMapping("withdrawal.do")
	public String withdrawal(Model model) {
		log.info("AdminController - withdrawal.do");
		
		Criteria criteria = new Criteria();
		
		// 임시.. 페이징 xxxx
		int total = 1;
		
		AdminPageDTO adminPageMaker = new AdminPageDTO(criteria, total);
		
		model.addAttribute("adminPageMaker", adminPageMaker);
		
		return "shoppingMall/admin/withdrawal";
	}
	// 탈퇴신청 목록 출력 withdrawal - ajax
	@ResponseBody
	@RequestMapping(value="adminWithdrawalList_Ajax.do", consumes = "application/json")
	public Map<String, Object> adminWithdrawalList(@RequestBody Map<String, Object> map) {
		log.info("AdminController - adminWithdrawalList_Ajax.do");

		Criteria criteria = new Criteria();
		criteria.setPageNum((int) map.get("pageNum"));
		criteria.setAmount((int)map.get("amount"));
		Map<String, Object> withdrawalMap = new HashMap<>();

		List<DormantUserVO> withdrawalList = adminService.getDormantUsers(criteria);
		System.out.println(withdrawalList);
		withdrawalMap.put("withdrawalList", withdrawalList);
		
		int total = 10;	//임시
		withdrawalMap.put("total", total);
		
		return withdrawalMap;
	}
	// 휴면계정에서 탈퇴계정으로
	@RequestMapping("adminApprovalWithdraw.do")
	public String adminApproval(@RequestParam long user_key ,Model model) {
		log.info("휴면 > 탈퇴");

		adminService.modifyFlag(user_key);
		
		Criteria criteria = new Criteria();

		// 임시.. 페이징 xxxx
		int total = 1;

		AdminPageDTO adminPageMaker = new AdminPageDTO(criteria, total);

		model.addAttribute("adminPageMaker", adminPageMaker);

		return "shoppingMall/admin/withdrawal";
	}
	
	@RequestMapping("admin_order.do")
	public String admin_order(Model model, PagingVO pagingVO) {
		
		pagingVO.setAmount(10); // admin 주문 관리에서는 주문 목록을 10개씩 뿌려준다.
		
		List<OrderVO> orderList = adminService.getAllOrders(pagingVO);
		List<String> user_id_list = new ArrayList<String>();
		long total = adminService.getTotal("shop_order"); // 주문 테이블 데이터 개수를 구한다.

		// orderList 순서에  해당하는 user_key로 id 불러오기
		for(int i=0;i<orderList.size();i++) {
			user_id_list.add(adminService.getUserId(orderList.get(i).getUser_key()));
		}
		
		model.addAttribute("pageMaker", new PageDTO(pagingVO, total));
		model.addAttribute("orderList", orderList);
		model.addAttribute("user_id_list", user_id_list);
		
		return "shoppingMall/admin/order";
	}
	
	// ajax로 배송 목록 가져 오기
	@RequestMapping(value = "/admin_orderListPaging.do", consumes = "application/json")
	@ResponseBody
	public List<OrderVO> getOrderListPaging(@RequestBody PagingVO pagingVO) {
		
		List<OrderVO> orderList = adminService.getAllOrders(pagingVO);
		
		return orderList;
	}
	
	// ajax로 체크박스 배송 목록 가져 오기
	@RequestMapping(value = "/admin_orderListCheck.do", consumes = "application/json")
	@ResponseBody
	public Map<String, Object> getOrderListCheck(@RequestBody Map<String, Object> map) {

		long total = 0;
		long pageNum = (long)Integer.parseInt((String)map.get("pageNum"));
		long amount = (long)Integer.parseInt((String)map.get("amount"));

		List<String> stts_list = new ArrayList<String>();

		stts_list = (List<String>)map.get("stts");

		Map<String, Object> listMap = new HashMap<>();

		PagingVO pagingVO = new PagingVO(pageNum, amount);

		// 체크가 안되어있는 경우 (전체 주문 출력)
		if (stts_list.size() == 1 && Integer.parseInt(stts_list.get(0)) == 5) {

			total = adminService.getTotal("shop_order");

			List<OrderVO> orderList = adminService.getAllOrders(pagingVO);

			listMap.put("orders_list", orderList);
			listMap.put("total", total);

			return listMap;
		}

		// 특정 주문 체크박스에 체크가 되어 있는 경우
		List<OrderVO> orders_list = myPageService.getOrdersListStss(pagingVO, 0, stts_list);
		List<OrderVO> all_list = new ArrayList<OrderVO>();

		all_list = myPageService.getAllOrdersList(0);

		// 주문배송 상태와 숫자가 같으면 total 값을 1씩 증가시킨다.
		for (OrderVO item : all_list) {
			for (int i = 0; i < stts_list.size(); i++) {
				if ( item.getStts() == Integer.parseInt(stts_list.get(i)) )
					total++;
			}
		}

		listMap.put("orders_list", orders_list);
		listMap.put("total", total);

		return listMap;
	}

	

	@RequestMapping("refund.do")
	public String refund(Model model) {
		
		List<Order_GDVO> order_gd_list = adminService.getRtrnExchnOrderGD();
		List<String> user_id_list = new ArrayList<String>();
		List<Date> ship_date = new ArrayList<Date>();
		
		// 교환/환불 신청 상태인 회원의 아이디와 배송날짜 불러오기
		for(int i=0;i<order_gd_list.size();i++) {
			user_id_list.add(adminService.getRtrnExchnMemberId(order_gd_list.get(i).getOr_gd_key()));
			ship_date.add(adminService.getShipDate(order_gd_list.get(i).getOrder_num()));
		}
		
		model.addAttribute("order_gd_list", order_gd_list);
		model.addAttribute("user_id_list", user_id_list);
		model.addAttribute("ship_date", ship_date);
		
		return "shoppingMall/admin/refund";
	}

	/* 의정 - 후기관리 */
	// admin - review.jsp
	@RequestMapping("review.do")
	public String admin_review(Model model) {
		log.info("AdminController - review.do");
		
		Criteria criteria = new Criteria();
		
		int total = adminService.getReviewCount(0);	// 0은 전체
		
		AdminPageDTO adminPageMaker = new AdminPageDTO(criteria, total);
		
		model.addAttribute("adminPageMaker", adminPageMaker);
		
		return "shoppingMall/admin/review";
	}
	// review - ajax
	@ResponseBody
	@RequestMapping(value="adminReviewList_Ajax.do", consumes = "application/json")
	public Map<String, Object> adminReviewList(@RequestBody Map<String, Object> map) {
		log.info("AdminController - adminReviewList_Ajax.do");
		
		Criteria criteria = new Criteria();
		criteria.setPageNum((int) map.get("pageNum"));
		criteria.setAmount((int)map.get("amount"));
		
		int score = (int) map.get("score");
		
		Map<String, Object> reviewMap = new HashMap<>();
		
		List<ReviewVO> reviewList = adminService.getReviewList(criteria, (int) score);
		reviewMap.put("reviewList", reviewList);
		System.out.println(reviewList);
		
		int total = adminService.getReviewCount((long) score);
		reviewMap.put("total", total);
		
		return reviewMap;
	}
	
	@ResponseBody
	@RequestMapping(value="getMember.do" , method=RequestMethod.GET)
	public MemberVO getMember(@RequestParam("user_key") long user_key) {
		MemberVO member = memberService.getMemberInfo(user_key);
		
		return member;
	}
	
	@ResponseBody
	@RequestMapping(value="getDetails.do" , method=RequestMethod.GET)
	public MoreDetailsVO getDetails(@RequestParam("user_key") long user_key) {
		
		MoreDetailsVO details = myPageService.getDetail(user_key);
		
		return details;
	}
	
	@RequestMapping(value="goodsList.do", method= {RequestMethod.POST,RequestMethod.GET})
	public String goodsList(Model model , Criteria cri,HttpServletRequest request) {
		System.out.println("상품관리 페이지 입니다.");
		List<GoodsVO> goodsList = adminService.getGoodsList();
		//상품의 옵션별로 받아올 리스트이다.
		List<Object> detailList = new ArrayList<Object>();
		for(int i=0; i<goodsList.size();i++) {
			//대표 상품 하나에 옵션들을 받아오는 리스트이다. 카테고리와 굿즈넘버를 넘겨줘서 그걸로 1개의 상품의 옵션을 다담아오는 리스트를 만듬.
			List<Object> tempList = adminService.getGdList(goodsList.get(i).getCategory(),goodsList.get(i).getGoods_num());
			//그 리스트들을 다시 한 리스트에 addAll하여서 전체의 옵션 리스트를 하나 만들어준다.
			detailList.addAll(tempList);
		}
		//전체 옵션리스트 확인.
//		for(int i = 0 ; i<detailList.size();i++) {
//		System.out.println("detailList"+i+":"+detailList.get(i));
//		}
		if(request.getParameter("pageNum")==null) {
			cri.setAmount(5);
			cri.setPageNum(1);
		}
		else if(Integer.parseInt(request.getParameter("pageNum"))>1) {
			System.out.println("pageNum:"+request.getParameter("pageNum"));
			cri.setAmount(5);
			cri.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		}
		
		AdminPageDTO temp = new AdminPageDTO(cri,goodsList.size());
		System.out.println(temp);
		System.out.println(cri);
		model.addAttribute("detailList",detailList);
		model.addAttribute("goodsList",goodsList);
		model.addAttribute("PageMaker", temp);
		
				
		return "shoppingMall/admin/goodsList";
	}
	//goodsList.do와 같은 코드이지만 ajax로 실행될경우 ResponseBody가 예상치 못하게 전개되기에 새로 매핑을 받아왔다.
	@ResponseBody
	@RequestMapping(value="goodsListPaging.do", consumes = "application/json", method= {RequestMethod.POST,RequestMethod.GET})
	public Map<String,Object> goodsListPaging(Model model , Criteria cri,HttpServletRequest request) {
		System.out.println("상품관리 페이지 입니다.");
		List<GoodsVO> goodsList = adminService.getGoodsList();
		//상품의 옵션별로 받아올 리스트이다.
		List<Object> detailList = new ArrayList<Object>();
		for(int i=0; i<goodsList.size();i++) {
			//대표 상품 하나에 옵션들을 받아오는 리스트이다. 카테고리와 굿즈넘버를 넘겨줘서 그걸로 1개의 상품의 옵션을 다담아오는 리스트를 만듬.
			List<Object> tempList = adminService.getGdList(goodsList.get(i).getCategory(),goodsList.get(i).getGoods_num());
			//그 리스트들을 다시 한 리스트에 addAll하여서 전체의 옵션 리스트를 하나 만들어준다.
			detailList.addAll(tempList);
		}
		//post방식으로 넘어온 pageNum을 출력하고 그값을 criteria객체에 넣어준다.
			System.out.println("pageNum:"+request.getParameter("pageNum"));
			cri.setAmount(5);
			cri.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
	
		
		AdminPageDTO temp = new AdminPageDTO(cri,goodsList.size());
		System.out.println(temp);
		System.out.println(cri);
		//json으로 전달하기 위해 맵형식으로 바꿔준다.
		Map<String,Object> pagingList = new HashMap<String,Object>();
		pagingList.put("goodsList", goodsList);
		pagingList.put("detailList", detailList);
		pagingList.put("PageMaker", temp);
				
		System.out.println(pagingList);
		return pagingList;
	}
	
	@RequestMapping(value="addGoods.do")
	public String addGoods() {
		return "shoppingMall/admin/addGoods";
	}
	
	@RequestMapping(value="insertGoods.do", method=RequestMethod.POST)
	public String insertGoods(MultipartHttpServletRequest request) throws Exception {
		System.out.println("여기까진?");
		GoodsVO vo = new GoodsVO();
		Gd_BallVO ball= new Gd_BallVO();
		Gd_BatVO bat= new Gd_BatVO();
		Gd_GloveVO glove= new Gd_GloveVO();
		Gd_UniformVO uniform= new Gd_UniformVO();
		Gd_ShoesVO shoes= new Gd_ShoesVO();
		
		List<MultipartFile> mf = request.getFiles("IMG");
		//String uploadPath = request.getSession().getServletContext().getRealPath("/");
		//원래 프로젝트 String uploadPath="C:\\Users\\dntjr\\Documents\\workspace-sts-3.9.8.RELEASE\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\BBSHOP\\resources\\shoppingMall\\img\\goods\\glove\\";
		//깃에 있는 프로젝트경로
	
		String uploadPath="C:\\Users\\Mingu\\git\\BBSHOP\\src\\main\\webapp\\resources\\shoppingMall\\img\\goods\\glove\\";
		System.out.println("실제경로"+uploadPath);
		String [] originalFileExtension = new String [mf.size()];
		String [] storedFileName = new String[mf.size()];
		for(int i = 0 ; i < mf.size();i++) {
		originalFileExtension[i] = mf.get(i).getOriginalFilename();
		storedFileName[i]= UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension[i];
		
		}
		
		for(int i = 0; i<mf.size();i++) {
			if(mf.get(i).getSize()!=0)
				//암호화해서 파일을 저장한다.
			//mf.get(i).transferTo(new File(uploadPath+storedFileName[i]));
				mf.get(i).transferTo(new File(uploadPath+originalFileExtension[i]));
		}
		//goodsVO에 값을 하나하나 받아서 넣어준다 ㅠㅠ
		vo.setCategory(Integer.parseInt(request.getParameter("CATEGORY")));
		System.out.println("category"+vo.getCategory());
		vo.setPrice(Integer.parseInt(request.getParameter("PRICE")));
		System.out.println("price"+vo.getPrice());
		vo.setName(request.getParameter("NAME"));
		System.out.println("name"+vo.getName());
		vo.setBrand(request.getParameter("BRAND"));
		System.out.println("brand"+vo.getBrand());
		vo.setMain_img("resources/shoppingMall/img/goods/glove/"+originalFileExtension[0]);
		vo.setDtl_img1("resources/shoppingMall/img/goods/glove/"+originalFileExtension[1]);
		vo.setDtl_img2("resources/shoppingMall/img/goods/glove/"+originalFileExtension[2]);
		vo.setDiscount(Integer.parseInt(request.getParameter("DISCOUNT")));
		System.out.println("discount"+vo.getDiscount());
		vo.setSales(0);
		System.out.println("sales"+vo.getSales());
		vo.setDetail(request.getParameter("DETAIL"));
		System.out.println("detail"+vo.getDetail());
		//vo.setBEST(Integer.parseInt(request.getParameter("BEST")));
		System.out.println(vo);
		
		switch(Integer.parseInt(request.getParameter("CATEGORY"))) {
		
		case 1:{
			System.out.println("글러브입니다.");
			glove.setHAND(Integer.parseInt(request.getParameter("HAND")));
			glove.setTAMING(Integer.parseInt(request.getParameter("TAMING")));
			glove.setCOLOR(request.getParameter("COLOR"));
			glove.setPOSITION(request.getParameter("POSITION"));
			glove.setSTOCK(Integer.parseInt(request.getParameter("STOCK")));
			adminService.insertGoods(vo,glove);
			break;
		}
		case 2:{
			System.out.println("bat입니다.");
			bat.setMATERIAL(request.getParameter("MATERIAL"));
			bat.setGD_SIZE(Integer.parseInt(request.getParameter("GD_SIZE")));
			bat.setCOLOR(request.getParameter("COLOR"));
			bat.setSTOCK(Integer.parseInt(request.getParameter("STOCK")));
			adminService.insertGoods(vo,bat);
			break;
		}
//		
//		case 1:{
//			System.out.println("글러브입니다.");
//			glove.setHAND(Integer.parseInt(request.getParameter("HAND")));
//			glove.setTAMING(Integer.parseInt(request.getParameter("TAMING")));
//			glove.setCOLOR(request.getParameter("COLOR"));
//			glove.setPOSITION(request.getParameter("POSITION"));
//			glove.setSTOCK(Integer.parseInt(request.getParameter("STOCK")));
//			adminService.insertGoods(vo,glove);
//			break;
//		}
//		
//		case 1:{
//			System.out.println("글러브입니다.");
//			glove.setHAND(Integer.parseInt(request.getParameter("HAND")));
//			glove.setTAMING(Integer.parseInt(request.getParameter("TAMING")));
//			glove.setCOLOR(request.getParameter("COLOR"));
//			glove.setPOSITION(request.getParameter("POSITION"));
//			glove.setSTOCK(Integer.parseInt(request.getParameter("STOCK")));
//			adminService.insertGoods(vo,glove);
//			break;
//		}
//		
//		case 1:{
//			System.out.println("글러브입니다.");
//			glove.setHAND(Integer.parseInt(request.getParameter("HAND")));
//			glove.setTAMING(Integer.parseInt(request.getParameter("TAMING")));
//			glove.setCOLOR(request.getParameter("COLOR"));
//			glove.setPOSITION(request.getParameter("POSITION"));
//			glove.setSTOCK(Integer.parseInt(request.getParameter("STOCK")));
//			adminService.insertGoods(vo,glove);
//			break;
//		}
//		
		
		}
		
		System.out.println(glove);
		
		//각태그별로 맞는 네임을쓰자 카테고리의 번호를 받아고기
		return "forward:goodsList.do";
	}
	@ResponseBody
	@RequestMapping(value="selectGoodsDelete.do",method=RequestMethod.POST)
	public String selectDelete(HttpServletRequest request) {
		List<Integer> delnum = new ArrayList<Integer>();
		Map<String,Object> deleteMap = new HashMap<String,Object>();
		String[] num = request.getParameterValues("goodsnum");
		
		for(int i = 0 ; i <num.length;i++) {
			delnum.add(Integer.parseInt(num[i]));
		}
		System.out.println(delnum);
		deleteMap.put("delnum", delnum);
		//TOODOO 상품을 지우려고 하니 카테고리별로 지워야할것들이 있다. 일단 카테고리 값을 받아오고, 어떻게 데이터를 처리할지 생각해보자.
		
		adminService.deleteGoods(deleteMap);
		String msg = "삭제성공";
		return msg;
	}

	@RequestMapping("service_FAQ.do")
	public String service_FAQ(Model model , Criteria cri,HttpServletRequest request) {
		List<FAQVO> FAQList = adminService.getFAQList();
		//System.out.println(FAQList);
		
		cri.setAmount(5);
		AdminPageDTO temp = new AdminPageDTO(cri,FAQList.size());
		
		model.addAttribute("FAQList", FAQList);
		model.addAttribute("PageMaker",temp);
		
		return "shoppingMall/admin/service_FAQ";
	}
	@ResponseBody
	@RequestMapping(value="service_FAQPaging.do", consumes = "application/json", method= {RequestMethod.POST,RequestMethod.GET})
	public Map<String,Object> FAQListPaging(Model model , Criteria cri,HttpServletRequest request) {
		System.out.println("FAQ 페이지 입니다.");
		List<FAQVO> FAQList = adminService.getFAQList();
		System.out.println(FAQList);
		
		cri.setAmount(5);
		
		
		//post방식으로 넘어온 pageNum을 출력하고 그값을 criteria객체에 넣어준다.
			System.out.println("pageNum:"+request.getParameter("pageNum"));
			cri.setAmount(5);
			cri.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
	
		
		AdminPageDTO temp = new AdminPageDTO(cri,FAQList.size());
		System.out.println(temp);
		System.out.println(cri);
		//json으로 전달하기 위해 맵형식으로 바꿔준다.
		Map<String,Object> pagingList = new HashMap<String,Object>();
		pagingList.put("FAQList", FAQList);
		pagingList.put("PageMaker",temp);
		
		System.out.println(pagingList);
		return pagingList;
	}
	
	@RequestMapping(value="write_FAQ.do" ,method=RequestMethod.GET)
	public String write_FAQ(HttpServletRequest request) {
		FAQVO faq = new FAQVO();
		faq.setSUBJECT(request.getParameter("SUBJECT"));
		faq.setCONTENT(request.getParameter("CONTENT"));
		faq.setFAQ_CATEGORY(request.getParameter("FAQ_CATEGORY"));
		System.out.println("------------------------------------------");
		System.out.println(faq);
		System.out.println("------------------------------------------");
		
		adminService.write_FAQ(faq);
		return "forward:service_FAQ.do";
	}
	@ResponseBody
	@RequestMapping(value="selectFAQDelete" ,method=RequestMethod.GET)
	public String selectDeleteFAQ(HttpServletRequest request) {
			List<Integer> delnum = new ArrayList<Integer>();
			Map<String,Object> deleteMap = new HashMap<String,Object>();
			String[] num = request.getParameterValues("faqnum");
			
			for(int i = 0 ; i <num.length;i++) {
				delnum.add(Integer.parseInt(num[i]));
			}
			System.out.println(delnum);
			deleteMap.put("delnum", delnum);
			//TOODOO 상품을 지우려고 하니 카테고리별로 지워야할것들이 있다. 일단 카테고리 값을 받아오고, 어떻게 데이터를 처리할지 생각해보자.
			
			adminService.deleteFAQ(deleteMap);
			String msg = "삭제성공";
			return msg;
		}
		
	@RequestMapping(value="modifyFAQ.do" , method=RequestMethod.GET)
	public String modifyFAQ(@RequestParam("faq_num") int faq_num,HttpServletRequest request,Model model) {
		System.out.println(faq_num);
		FAQVO FAQ = adminService.getFAQ(faq_num);
		
		System.out.println(FAQ);
		model.addAttribute("FAQ",FAQ);
		return "shoppingMall/admin/service_FAQ_Modify";
		
	}
	
	@RequestMapping(value="ModifyFAQExecute.do" , method=RequestMethod.GET)
	public String ModifyFAQExecute(FAQVO faq) {
		System.out.println(faq);
		
		adminService.ModifyFAQ(faq);
		
		
		return "forward:service_FAQ.do";
	}
	
	@RequestMapping("service_OneToOne.do")
	public String onetoone(Model model,Criteria cri) {
		
		List<OnetooneVO> onetooneList =adminService.getOnetoone();
		System.out.println(onetooneList);
		
		cri.setAmount(5);
		AdminPageDTO temp = new AdminPageDTO(cri,onetooneList.size());
		
		
		
		model.addAttribute("onetoone",onetooneList);
		model.addAttribute("PageMaker",temp);
		return "shoppingMall/admin/service_OneToOne";
	}
	
	@ResponseBody
	@RequestMapping(value="service_OnetoonePaging.do", consumes = "application/json", method= {RequestMethod.POST,RequestMethod.GET})
	public Map<String,Object> OnetooneListPaging(Model model , Criteria cri,HttpServletRequest request) {
		System.out.println("FAQ 페이지 입니다.");
		List<OnetooneVO> onetooneList = adminService.getOnetoone();
		System.out.println(onetooneList);
		
		cri.setAmount(5);
		
		
		//post방식으로 넘어온 pageNum을 출력하고 그값을 criteria객체에 넣어준다.
			System.out.println("pageNum:"+request.getParameter("pageNum"));
			cri.setAmount(5);
			cri.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
	
		
		AdminPageDTO temp = new AdminPageDTO(cri,onetooneList.size());
		System.out.println(temp);
		System.out.println(cri);
		//json으로 전달하기 위해 맵형식으로 바꿔준다.
		Map<String,Object> pagingList = new HashMap<String,Object>();
		pagingList.put("oto", onetooneList);
		pagingList.put("PageMaker",temp);
		
		System.out.println(pagingList);
		return pagingList;
	}
	
	@RequestMapping(value="answerOTO.do",method=RequestMethod.GET)
	public String answerOTO(HttpServletRequest request,OnetooneVO oto ) {
		System.out.println(oto);
		adminService.answerOTO(oto);
		return "forward:service_OneToOne.do";
	}
	
	@RequestMapping(value="searchOtoCategory.do")
	public String searchOtoCategory (HttpServletRequest request ,Model model,Criteria cri) {
		String [] category = request.getParameterValues("Category");
		List<String> searchList = new ArrayList<String>();
		Map<String,Object> map = new HashMap<String,Object>();
		for(int i = 0 ; i < category.length;i++) {

			searchList.add(i,category[i]);
		}
		map.put("search", searchList);
		List<OnetooneVO> resultList=adminService.searchOtoCategory(map);
		cri.setAmount(5);
		AdminPageDTO temp = new AdminPageDTO(cri,resultList.size());
		
		model.addAttribute("onetoone" ,resultList);
		model.addAttribute("PageMaker",temp);
		
		return "shoppingMall/admin/service_OneToOne";
	}
	
	@RequestMapping("searchOtoAnswer.do")
	public String searchOtoAnswer(HttpServletRequest request, Model model,Criteria cri) {
		String answer = request.getParameter("Answer");
		
	
		System.out.println("답변하기 리스트"+answer);
		
		List<OnetooneVO> resultList = adminService.searchOtoAnswer(answer);
		cri.setAmount(5);
		AdminPageDTO temp = new AdminPageDTO(cri,resultList.size());
		
		model.addAttribute("onetoone" ,resultList);
		model.addAttribute("PageMaker",temp);
		
		return "shoppingMall/admin/service_OneToOne";
	}

	@RequestMapping("community_Board.do")
	public String community_Notice(Model model, Criteria cri) {
		
		List<CommunityVO> boardList = adminService.getBoardAll();
		System.out.println(boardList);
		cri.setAmount(5);
		AdminPageDTO temp = new AdminPageDTO(cri,boardList.size());
		
		model.addAttribute("boardList",boardList);
		model.addAttribute("PageMaker",temp);
		return "shoppingMall/admin/community_Board";
	}


	@RequestMapping("community_Report.do")
	public String report(Model model,Criteria cri) {
		List<ReportBoardVO> reportList = adminService.getReportBoard();
		//Map<String,Object> reportMap = new HashMap<String,Object>();
		System.out.println("reportList : " + reportList.toString());
		List<CommunityVO> boardList = adminService.getBoard(reportList);
		System.out.println("boardList : " + boardList.toString());		
		
		cri.setAmount(5);
		AdminPageDTO temp = new AdminPageDTO(cri,reportList.size());
		model.addAttribute("reportList",reportList);
		model.addAttribute("boardList",boardList);
		model.addAttribute("PageMaker",temp);
		
		return "shoppingMall/admin/community_Report";
	}
	@ResponseBody
	@RequestMapping(value="boardListPaging.do" , consumes = "application/json", method= {RequestMethod.POST,RequestMethod.GET})
	public Map<String,Object> boardListPaging(Model model, Criteria cri, HttpServletRequest request) {
		List<CommunityVO> boardList = adminService.getBoardAll();
		cri.setAmount(5);
		//Get방식으로 넘어온 pageNum을 출력하고 그값을 criteria객체에 넣어준다.
			System.out.println("pageNum:"+request.getParameter("pageNum"));
			cri.setAmount(5);
			cri.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		AdminPageDTO temp = new AdminPageDTO(cri,boardList.size());
		System.out.println(temp);
		System.out.println(cri);
		//json으로 전달하기 위해 맵형식으로 바꿔준다.
		Map<String,Object> pagingList = new HashMap<String,Object>();
		pagingList.put("board",boardList);
		pagingList.put("PageMaker",temp);
		
		System.out.println(pagingList);
		return pagingList;
	}
	
	@ResponseBody
	@RequestMapping(value="selectBoardDelete.do" ,method=RequestMethod.POST)
	public String selectBoardDelete(HttpServletRequest request){
	List<Integer> delnum = new ArrayList<Integer>();
	Map<String,Object> deleteMap = new HashMap<String,Object>();
	String[] num = request.getParameterValues("boardnum");
	
	for(int i = 0 ; i <num.length;i++) {
		delnum.add(Integer.parseInt(num[i]));
	}
	System.out.println(delnum);
	deleteMap.put("delnum", delnum);
	
	adminService.deleteBoard(deleteMap);
	String msg = "삭제성공";
	return msg;
}
	@RequestMapping(value="searchBoardCategory.do")
	public String searchBoardCategory(Model model, HttpServletRequest request,Criteria cri) {
		String [] category = request.getParameterValues("category");
		List<String> searchList = new ArrayList<String>();
		Map<String,Object> map = new HashMap<String,Object>();
		for(int i = 0 ; i < category.length;i++) {

			searchList.add(i,category[i]);
		}
		map.put("search", searchList);
		List<CommunityVO> resultList=adminService.searchBoardCategory(map);
		cri.setAmount(5);
		AdminPageDTO temp = new AdminPageDTO(cri,resultList.size());
		
		model.addAttribute("boardList" ,resultList);
		model.addAttribute("PageMaker",temp);
		
		return "shoppingMall/admin/community_Board";
	}
	
	@RequestMapping(value="searchReportCategory.do")
	public String searchReportCategory(Model model, HttpServletRequest request,Criteria cri) {
		String [] category = request.getParameterValues("category");
		List<String> searchList = new ArrayList<String>();
		Map<String,Object> map = new HashMap<String,Object>();
		for(int i = 0 ; i < category.length;i++) {

			searchList.add(i,category[i]);
		}
		map.put("search", searchList);
		List<ReportBoardVO> resultList=adminService.searchReportCategory(map);
		List<CommunityVO> boardList = adminService.getBoard(resultList);
		cri.setAmount(5);
		AdminPageDTO temp = new AdminPageDTO(cri,resultList.size());
		
		model.addAttribute("reportList" ,resultList);
		model.addAttribute("boardList",boardList);
		model.addAttribute("PageMaker",temp);
		
		return "shoppingMall/admin/community_Report";
	}
	
	@RequestMapping(value="adminAccount.do" ,method=RequestMethod.POST)
	public String adminAccount() {
		return "shoppingMall/admin/adminAccount";
	}

	@RequestMapping(value="sanctions.do" ,method=RequestMethod.GET)
	public String sanctionsUser(@RequestParam("writer")String user, @RequestParam("board_num") String board_num) {
		System.out.println("신고당한 유저 닉네임:"+user);
		System.out.println("신고당한 게시글 번호:"+board_num);
		
		adminService.sanctionsUser(user ,board_num);
		
		return "forward:/community_Report.do";
	}
	
	@RequestMapping(value="admin_chart.do")
	public String admin_chart() {
		
		return "shoppingMall/admin/chart";
	}
	
	@ResponseBody
	@RequestMapping(value="updateTitle.do" , method=RequestMethod.GET,  produces = "application/text; charset=utf8")
	public String updateTitle(@RequestParam("board_num") long board_num) {
		
		CommunityVO community = new CommunityVO();
		
		adminService.updateTitle(board_num);
		community = communityService.getPost(board_num);
		System.out.println("title:"+community.getTITLE());
		
		return community.getTITLE();
	}

}