package com.bbshop.bit.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.Cart_GDVO;
import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.Order_GDVO;
import com.bbshop.bit.mapper.GoodsMapper;
import com.bbshop.bit.mapper.OrderMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service("orderService")
public class OrderServiceImpl implements OrderService {
	
	private GoodsMapper goodsMapper;
	
	// 지수 카트
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Cart_GDVO> getCheckedCartList(String[] goods_num_list, long user_key){
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		List<Cart_GDVO> cartList = mapper.getCheckedCartList(goods_num_list, user_key);
		
		return cartList;
	}
	
	@Override
	public Gd_GloveVO getOptionListGlove(long gd_details) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		Gd_GloveVO glovevo = mapper.getOptionListGlove(gd_details); 
		
		return glovevo;
	}
	
	@Override
	public Gd_BatVO getOptionListBat(long gd_details) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		Gd_BatVO batvo = mapper.getOptionListBat(gd_details); 
		
		return batvo;
	}
	
	@Override
	public Gd_UniformVO getOptionListUniform(long gd_details) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		Gd_UniformVO uniformvo = mapper.getOptionListUniform(gd_details); 
		
		return uniformvo;
	}
	
	@Override
	public Gd_ShoesVO getOptionListShoes(long gd_details) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		Gd_ShoesVO shoesvo = mapper.getOptionListShoes(gd_details); 
		
		return shoesvo;
	}
	
	@Override
	public Gd_BallVO getOptionListBall(long gd_details) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		Gd_BallVO ballvo = mapper.getOptionListBall(gd_details); 
		
		return ballvo;
	}

	@Override
	public int insertOrder(OrderVO order) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.insertOrder(order);
	}
	
	@Override
	public long getLastOrderNum(long user_key) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.getLastOrderNum(user_key);
	}
	
	@Override
	public OrderVO getOrderList(long order_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.getOrderList(order_num);
	}
	
	@Override
	public int deleteOrder(long order_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.deleteOrder(order_num);
	}
	
	@Override
	public int updateCancelStts(long order_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateCancelStts(order_num);
	}
	
	@Override
	public int updateGloveStock(int qntty, long glove_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateGloveStock(qntty, glove_num);
	}
	
	@Override
	public int updateBatStock(int qntty, long bat_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateBatStock(qntty, bat_num);
	}
	
	@Override
	public int updateUniformStock(int qntty, long uniform_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateUniformStock(qntty, uniform_num);
	}
	
	@Override
	public int updateShoesStock(int qntty, long shoes_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateShoesStock(qntty, shoes_num);
	}
	
	@Override
	public int updateBallStock(int qntty, long ball_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateBallStock(qntty, ball_num);
	}
	
	@Override
	public int updateCancledGloveStock(int qntty, long glove_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateCancledGloveStock(qntty, glove_num);
	}
	
	@Override
	public int updateCancledBatStock(int qntty, long bat_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateCancledBatStock(qntty, bat_num);
	}
	
	@Override
	public int updateCancledUniformStock(int qntty, long uniform_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateCancledUniformStock(qntty, uniform_num);
	}
	
	@Override
	public int updateCancledShoesStock(int qntty, long shoes_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateCancledShoesStock(qntty, shoes_num);
	}
	
	@Override
	public int updateCancledBallStock(int qntty, long ball_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateCancledBallStock(qntty, ball_num);
	}
	
	@Override
	public int updateGoodsSales(int qntty, long goods_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateGoodsSales(qntty, goods_num);
	}
	
	@Override
	public int updateTid(String tid, long order_num) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.updateTid(tid, order_num);
	}
	
	@Override
	public int insertOrderGD(Order_GDVO order_gd) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.insertOrderGD(order_gd);
	}
	
	// 의정 단일상품
	
	/*
	// goodsMapper를 이용해 GoodsVO를 반환
	@Override
	public GoodsVO getGoodsInfo(Long goods_num) {
		log.info("OrderService - GoodsMapper......getGoodsInfo..goods_num : " + goods_num);
		
		return goodsMapper.getGoodsInfo(goods_num);
	}
*/
	
	
	@Override
	public Gd_GloveVO getGloveOption(long goods_num, int hand, int taming) {
		log.info("OrderService.....gloveinfo");
		log.info("orderservice, gloveinfo, goods_num : " + goods_num + ", hand :" + hand + ", taming : " + taming);
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("goods_num", goods_num);
		map.put("hand", hand);
		map.put("taming", taming);
	
		return orderMapper.getGloveOption(map);
	}


	@Override
	public Gd_BatVO getBatOption(long goods_num, int gd_size) {
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("goods_num", goods_num);
		map.put("gd_size", gd_size);
		
		return orderMapper.getBatOption(map);
	}


	@Override
	public Gd_UniformVO getUniformOption(long goods_num, int gd_size) {
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("goods_num", goods_num);
		map.put("gd_size", gd_size);
		
		return orderMapper.getUniformOption(map);
	}


	@Override
	public Gd_ShoesVO getShoesOption(long goods_num, int spike, int gd_size) {
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("goods_num", goods_num);
		map.put("spike", spike);
		map.put("gd_size", gd_size);
		
		return orderMapper.getShoesOption(map);
	}


	@Override
	public Gd_BallVO getBallOption(long goods_num, int sales_unit) {
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("goods_num", goods_num);
		map.put("sales_unit", sales_unit);
		
		return orderMapper.getBallOption(map);
		
	}

}
