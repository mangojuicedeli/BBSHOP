package com.bbshop.bit.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bbshop.bit.domain.AdminPageDTO;
import com.bbshop.bit.domain.Criteria;
import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.service.AdminService;

@Controller
@RequestMapping("*.do")
public class AdminController {
	
	@Autowired(required=false)
	AdminService adminService;
	
	@RequestMapping("admin_main.do")
	public String admin_main() {
		return "shoppingMall/admin/admin_main";
	}
	
	@RequestMapping("userlist.do")
	public String userList() {
		return "shoppingMall/admin/userlist";
	}

	@RequestMapping("withdrawal.do")
	public String withdrawal() {
		return "shoppingMall/admin/withdrawal";
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
		
		String uploadPath="C:\\Users\\dntjr\\GITHUB\\BBSHOP-1\\src\\main\\webapp\\resources\\shoppingMall\\img\\goods\\glove\\";
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
	
	@RequestMapping("order.do")
	public String order() {
		return "shoppingMall/admin/order";
	}

	

	@RequestMapping("refund.do")
	public String refund() {
		return "shoppingMall/admin/refund";
	}

	@RequestMapping("review.do")
	public String admin_review() {
		return "shoppingMall/admin/review";
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
	
	@RequestMapping(value="service_FAQ_write.do")
	public String service_FAQ_write() {
		return "shoppingMall/admin/service_FAQ_write";
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
	public String onetoone() {
		return "shoppingMall/admin/service_OneToOne";
	}

	@RequestMapping("service_QNA.do")
	public String QNA() {
		return "shoppingMall/admin/service_QNA";
	}

	@RequestMapping("community_Notice.do")
	public String community_Notice() {
		return "shoppingMall/admin/community_Notice";
	}


	@RequestMapping("report.do")
	public String report() {
		return "shoppingMall/admin/report";
	}

	@RequestMapping("adminAccount.do")
	public String adminAccount() {
		return "shoppingMall/admin/adminAccount";
	}

	@RequestMapping("admin_chart.do")
	public String show_admin_chart() {
		
		return "shoppingMall/admin/g_chart_api_test";
	}	
	
	
}