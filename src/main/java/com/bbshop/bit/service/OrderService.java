package com.bbshop.bit.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bbshop.bit.domain.Cart_GDVO;
import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.Order_GDVO;

public interface OrderService {
	
	// 지수 카트
	// 장바구니 목록 중 체크된 상품 불러오기
	public List<Cart_GDVO> getCheckedCartList(String[] goods_num_list, long user_key);
	
	// 상품 상세 옵션 불러오기
	public Gd_GloveVO getOptionListGlove(long gd_details);
	
	public Gd_BatVO getOptionListBat(long gd_details);
	
	public Gd_UniformVO getOptionListUniform(long gd_details);
	
	public Gd_ShoesVO getOptionListShoes(long gd_details);
	
	public Gd_BallVO getOptionListBall(long gd_details);
	
	// shop_order테이블에 주문 내역 insert
	public int insertOrder(OrderVO order);
	
	// 카카오페이 결제 시 insert했던 주문 내역의 order_num을 불러옴
	public long getLastOrderNum(long user_key);
	
	// shop_order 테이블의 내용 불러오기
	public OrderVO getOrderList(long order_num);
	
	// shop_order 주문 삭제(결제 실패, 결제 도중 취소 시에만 해당)
	public int deleteOrder(long order_num);
	
	// 주문 취소 시 주문 상태 = 취소, 주문_취소 = 취소 o 로 변경
	public int updateCancelStts(long order_num);
	
	// 판매한 수량 만큼 재고에서 빼기
	public int updateGloveStock(int qntty, long glove_num);
	
	public int updateBatStock(int qntty, long bat_num);
	
	public int updateUniformStock(int qntty, long uniform_num);
	
	public int updateShoesStock(int qntty, long shoes_num);
	
	public int updateBallStock(int qntty, long ball_num);
	
	// 주문 취소한 수량만큼 재고에 더하기
	public int updateCancledGloveStock(int qntty, long glove_num);
	
	public int updateCancledBatStock(int qntty, long bat_num);
	
	public int updateCancledUniformStock(int qntty, long uniform_num);
	
	public int updateCancledShoesStock(int qntty, long shoes_num);
	
	public int updateCancledBallStock(int qntty, long ball_num);
	
	// goods 테이블에 판매 수량 업데이트
	public int updateGoodsSales(int qntty, long goods_num);
	
	// tid 값 추가
	public int updateTid(String tid, long order_num);
	
	// 주문_상품별 테이블에 insert
	public int insertOrderGD(Order_GDVO order_gd);
	
	// 사용한 적립금만큼 savings 테이블의 savings_used에 더함
	public int updateSavings_used(long useSavings, long order_num);
	
	// 사용한 적립금만큼 sh_user 테이블의 savings에서 뺌
	public int update_usedUser_savings(long useSavings, long user_key);
	
	// 의정 단일상품

//	public GoodsVO getGoodsInfo(Long goods_num);

	public Gd_GloveVO getGloveOption(long goods_num, int hand, int taming);
	
	public Gd_BatVO getBatOption(long goods_num, int gd_size);
	
	public Gd_UniformVO getUniformOption(long goods_num, int gd_size);
	
	public Gd_ShoesVO getShoesOption(long goods_num, int spike, int gd_size);
	
	public Gd_BallVO getBallOption(long goods_num, int sales_unit);
}
