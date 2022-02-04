package com.markbook.domain;

public class mk_reviewVO {

	private int rev_num;
	private int b_num;
	private String m_id;
	private float rev_point;
	private String rev_content;
	
	
	Integer rating;
	
	public int getRev_num() {
		return rev_num;
	}
	public void setRev_num(int rev_num) {
		this.rev_num = rev_num;
	}
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public float getRev_point() {
		return rev_point;
	}
	public void setRev_point(float rev_point) {
		this.rev_point = rev_point;
	}
	public String getRev_content() {
		return rev_content;
	}
	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}
	@Override
	public String toString() {
		return "mk_reviewVO [rev_num=" + rev_num + ", b_num=" + b_num + ", m_id=" + m_id + ", rev_point=" + rev_point
				+ ", rev_content=" + rev_content + "]";
	}
	
	
}
