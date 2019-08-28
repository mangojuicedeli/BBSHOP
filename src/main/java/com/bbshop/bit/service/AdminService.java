package com.bbshop.bit.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.bbshop.bit.domain.CommunityVO;
import com.bbshop.bit.domain.Criteria;
import com.bbshop.bit.domain.DormantUserVO;
import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.OnetooneVO;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.Order_GDVO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReportBoardVO;
import com.bbshop.bit.domain.ReviewVO;



public interface AdminService {

	public List<GoodsVO> getGoodsList();
	public List<Object> getGdList(int category, long goods_NUM);
	public void insertGoods(GoodsVO vo, Object obj);
	public void deleteGoods(Map<String, Object> deleteMap);
	public List<FAQVO> getFAQList();
	public void write_FAQ(FAQVO faq);
	public void deleteFAQ(Map<String, Object> deleteMap);
	public FAQVO getFAQ(int faq_num);
	public void ModifyFAQ(FAQVO faq);
	public List<OnetooneVO> getOnetoone();
	public List<OnetooneVO> searchOtoCategory(Map<String, Object> map);
	public List<OnetooneVO> searchOtoAnswer(String answer);
	public List<ReportBoardVO> getReportBoard();
	public List<CommunityVO> getBoard(List<ReportBoardVO> reportList);
	public List<CommunityVO> getBoardAll();
	public void deleteBoard(Map<String, Object> deleteMap);
	public List<CommunityVO> searchBoardCategory(Map<String, Object> map);
	public List<ReportBoardVO> searchReportCategory(Map<String, Object> map);
	public void sanctionsUser(String user, String board_num);

	
	/* 의정 - 후기관리 */
	// 후기 목록 출력
	public List<ReviewVO> getReviewList(Criteria criteria, long score);
	// 후기 개수
	public int getReviewCount(long score);
	
	/* 의정 - 회원관리 - 회원탈퇴 */
	// 휴면유저 출력
	public List<DormantUserVO> getDormantUsers(Criteria criteria);
	// 휴면 > 탈퇴
	public void modifyFlag(long user_key);

	/* 지수 - 회원관리 - 회원목록 */
	public List<OrderVO> getAllOrders(PagingVO pagingVO);
	public String getUserId(long user_key);
	public List<Order_GDVO> getRtrnExchnOrderGD();
	public String getRtrnExchnMemberId(long or_gd_key);
	public Date getShipDate(long order_num);
	public List<MemberVO> getAllMembers();
	public void answerOTO(OnetooneVO oto);
	public int updateTitle(long board_num);
	
	/* 민구 - 테이블 데이터 개수 구하기 */
	public long getTotal(String table);

}
