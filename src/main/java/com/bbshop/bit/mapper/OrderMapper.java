package com.bbshop.bit.mapper;

import java.util.HashMap;
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

public interface OrderMapper {
	
	// 지수 장바구니
	// 장바구니 목록 중 체크된 상품 불러오기
	public List<Cart_GDVO> getCheckedCartList(@Param("goods_num_list") String[] goods_num_list, @Param("user_key") long user_key);
	
	// 상품 상세 옵션 불러오기
	public Gd_GloveVO getOptionListGlove(long gd_details);
	
	public Gd_BatVO getOptionListBat(long gd_details);
	
	public Gd_UniformVO getOptionListUniform(long gd_details);
	
	public Gd_ShoesVO getOptionListShoes(long gd_details);
	
	public Gd_BallVO getOptionListBall(long gd_details);
	
	// 오더 테이블 관련
	public int insertOrder(OrderVO order);
	
	public long getLastOrderNum(long user_key);
	
	public OrderVO getOrderList(long order_num);
	
	public int deleteOrder(long order_num);
	
	public int updateCancelStts(long order_num);
	
	// 재고 관련
	public int updateGloveStock(@Param("QNTTY") int qntty,
			@Param("GLOVE_NUM") long glove_num);
	
	public int updateBatStock(@Param("QNTTY") int qntty,
			@Param("BAT_NUM") long bat_num);
	
	public int updateUniformStock(@Param("QNTTY") int qntty,
			@Param("UNIFORM_NUM") long uniform_num);
	
	public int updateShoesStock(@Param("QNTTY") int qntty,
			@Param("SHOES_NUM") long shoes_num);
	
	public int updateBallStock(@Param("QNTTY") int qntty,
			@Param("BALL_NUM") long ball_num);
	
	public int updateCancledGloveStock(@Param("QNTTY") int qntty,
			@Param("GLOVE_NUM") long glove_num);
	
	public int updateCancledBatStock(@Param("QNTTY") int qntty,
			@Param("BAT_NUM") long bat_num);
	
	public int updateCancledUniformStock(@Param("QNTTY") int qntty,
			@Param("UNIFORM_NUM") long uniform_num);
	
	public int updateCancledShoesStock(@Param("QNTTY") int qntty,
			@Param("SHOES_NUM") long shoes_num);
	
	public int updateCancledBallStock(@Param("QNTTY") int qntty,
			@Param("BALL_NUM") long ball_num);
	
	// goods 테이블에 판매 수량 업데이트
	public int updateGoodsSales(@Param("qntty") int qntty,
			@Param("goods_num") long goods_num);
	
	// tid 값 추가
	public int updateTid(@Param("tid") String tid,
			@Param("order_num") long order_num);
	
	// 주문_상품별 테이블에 insert
	public int insertOrderGD(Order_GDVO order_gd);
	
	// 사용한 적립금만큼 savings 테이블의 savings_used에 더함
	public int updateSavings_used(@Param("useSavings") long useSavings,
			@Param("order_num") long order_num);
	
	// 사용한 적립금만큼 sh_user 테이블의 savings에서 뺌
	public int update_usedUser_savings(@Param("useSavings") long useSavings,
			@Param("user_key") long user_key);

	// 의정 단일상품
	public Gd_GloveVO getGloveOption(HashMap<String, Object> map);	
	
	public Gd_BatVO getBatOption(HashMap<String, Object> map);	
	
	public Gd_UniformVO getUniformOption(HashMap<String, Object> map);	
	
	public Gd_ShoesVO getShoesOption(HashMap<String, Object> map);	
	
	public Gd_BallVO getBallOption(HashMap<String, Object> map);
}
