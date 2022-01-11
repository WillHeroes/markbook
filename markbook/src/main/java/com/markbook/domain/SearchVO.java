package com.markbook.domain;

public class SearchVO {

	private String option;
	private String keyword;
	private String b2_category;
	private String b2_bookstatus;
	private String b2_sellstatus;

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getB2_category() {
		return b2_category;
	}

	public void setB2_category(String b2_category) {
		this.b2_category = b2_category;
	}

	public String getB2_bookstatus() {
		return b2_bookstatus;
	}

	public void setB2_bookstatus(String b2_bookstatus) {
		this.b2_bookstatus = b2_bookstatus;
	}

	public String getB2_sellstatus() {
		return b2_sellstatus;
	}

	public void setB2_sellstatus(String b2_sellstatus) {
		this.b2_sellstatus = b2_sellstatus;
	}

	@Override
	public String toString() {
		return "SearchVO [option=" + option + ", keyword=" + keyword + ", b2_category=" + b2_category
				+ ", b2_bookstatus=" + b2_bookstatus + ", b2_sellstatus=" + b2_sellstatus + "]";
	}

}
