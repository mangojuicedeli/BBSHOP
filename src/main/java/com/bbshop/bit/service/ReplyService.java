package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReplyPageDTO;
import com.bbshop.bit.domain.ReplyVO;

public interface ReplyService {
	
	public int registerReply(ReplyVO vo);
	
	public ReplyVO getReply(long reply_num);
	
	public int removeReply(long reply_num);
	
	public ReplyVO modifyReply(ReplyVO vo, long num);
	
	public List<ReplyVO> getList(PagingVO pagingvo, long board_num);
	
	public ReplyPageDTO getListPage(PagingVO pagingvo, long board_num);

}
