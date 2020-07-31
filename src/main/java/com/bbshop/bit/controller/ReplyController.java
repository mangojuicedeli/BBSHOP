package com.bbshop.bit.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReplyPageDTO;
import com.bbshop.bit.domain.ReplyVO;
import com.bbshop.bit.service.ReplyService;

import lombok.AllArgsConstructor;

@RequestMapping("/replies/")
@RestController
@AllArgsConstructor
public class ReplyController {
	
	private ReplyService replyService;
	
	@PostMapping
	public ResponseEntity<Void> create(@RequestBody ReplyVO reply) {
		return replyService.registerReply(reply) == 1
				? new ResponseEntity<Void>(HttpStatus.CREATED)
				: new ResponseEntity<Void>(HttpStatus.CONFLICT);
	}
	
	@GetMapping("/{num}")
	public ResponseEntity<ReplyVO> get(@PathVariable("num") long num) {
		ReplyVO reply = replyService.getReply(num);
		
		if (reply == null) return new ResponseEntity<ReplyVO>(HttpStatus.NOT_FOUND);
		
		return new ResponseEntity<ReplyVO>(reply, HttpStatus.OK);
	}
	
	@PutMapping("/{num}")
	public ResponseEntity<ReplyVO> modify(@RequestBody ReplyVO reply, @PathVariable("num") long num) {
		ReplyVO updatedReply = replyService.modifyReply(reply, num);
		
		if (updatedReply == null) return new ResponseEntity<ReplyVO>(HttpStatus.NOT_FOUND);
		
		return new ResponseEntity<ReplyVO>(updatedReply, HttpStatus.OK);
	}
	
	@DeleteMapping("/{num}")
	public ResponseEntity<Void> remove(@PathVariable("num") long num) {
		return replyService.removeReply(num) == 1
				? new ResponseEntity<Void>(HttpStatus.OK)
				: new ResponseEntity<Void>(HttpStatus.NOT_FOUND);
	}
	
	@GetMapping
	public ResponseEntity<ReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("board") long board){
		
		PagingVO paging = new PagingVO(page, 10);
		return new ResponseEntity<>(replyService.getListPage(paging, board), HttpStatus.OK);
	}
	

	

}
