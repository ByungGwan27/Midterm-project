package main.common.wook.admin.control;

import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class PageIn5DTO {
	
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int pageNum; //현재페이지
	private int total;
	

	public PageIn5DTO(int pageNum, int total) {
		
		this.pageNum = pageNum;
		
		this.endPage = (int) Math.ceil(this.pageNum / 10.0)*5;
		this.startPage = this.endPage - 4;
		
		int realEnd = (int) (Math.ceil(total / 5.0)); 
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
		this.total = total;
		
	}
	
}
