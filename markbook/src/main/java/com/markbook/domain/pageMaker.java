package com.markbook.domain;

public class pageMaker {
	
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	private int displayPageNum = 10; // 하단 페이지 번호의 갯수
	
	private Criteria criteria;

	

	public void setCriteria(Criteria criteria) {
		this.criteria = criteria;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	
	// 게시글의 전체 갯수가 결정되면 calaDate 메소드를 호출하여 계산 실행
	private void calcData() {
		
		endPage = (int) (Math.ceil(criteria.getPage() / (double) displayPageNum) * displayPageNum);
		
		startPage = (endPage - displayPageNum) + 1; 
		
		int tempEndPage = (int) (Math.ceil(totalCount / (double) criteria.getPerPageNum())); 
		
		if (endPage > tempEndPage) { 
			endPage = tempEndPage; 
			} 
		
		prev = startPage == 1 ? false : true; 
		
		next = endPage * criteria.getPerPageNum() >= totalCount ? false : true;

		
	}
	
	public int getTotalCount() {
		return totalCount;
	}



	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public Criteria getCriteria() {
		return criteria;
	}


	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", criteria=" + criteria + "]";
	}
	
	
	
	

}
