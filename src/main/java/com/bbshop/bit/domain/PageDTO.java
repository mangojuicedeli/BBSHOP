package com.bbshop.bit.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	
	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private PagingVO pag;
	
	public PageDTO(PagingVO pag, int total) {
		
		this.pag = pag;
		this.total = total;
		
		this.endPage = (int) (Math.ceil(pag.getPageNum() / 5.0)) * 5;
		
		this.startPage = this.endPage - 4;
		
		int realEnd = (int) (Math.ceil((total * 1.0 ) / pag.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		this.prev = this.startPage > 1;
		
		this.next = this.endPage < realEnd;
	}
}
