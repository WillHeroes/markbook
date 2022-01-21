package com.markbook.domain;

public class book_orderVO {
	
	private int order_num;
	private String order_id;
	private int order_b2_num;
	private int order_bor_num;
	private String order_name;
	private String order_phone;
	private String order_addr1;
	private String order_addr2;
	private String order_msg;
	
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public int getOrder_b2_num() {
		return order_b2_num;
	}
	public void setOrder_b2_num(int order_b2_num) {
		this.order_b2_num = order_b2_num;
	}
	public int getOrder_bor_num() {
		return order_bor_num;
	}
	public void setOrder_bor_num(int order_bor_num) {
		this.order_bor_num = order_bor_num;
	}
	public String getOrder_name() {
		return order_name;
	}
	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}
	public String getOrder_phone() {
		return order_phone;
	}
	public void setOrder_phone(String order_phone) {
		this.order_phone = order_phone;
	}
	public String getOrder_addr1() {
		return order_addr1;
	}
	public void setOrder_addr1(String order_addr1) {
		this.order_addr1 = order_addr1;
	}
	public String getOrder_addr2() {
		return order_addr2;
	}
	public void setOrder_addr2(String order_addr2) {
		this.order_addr2 = order_addr2;
	}
	public String getOrder_msg() {
		return order_msg;
	}
	public void setOrder_msg(String order_msg) {
		this.order_msg = order_msg;
	}
	
	@Override
	public String toString() {
		return "book_orderVO [order_num=" + order_num + ", order_id=" + order_id + ", order_b2_num=" + order_b2_num
				+ ", order_bor_num=" + order_bor_num + ", order_name=" + order_name + ", order_phone=" + order_phone
				+ ", order_addr1=" + order_addr1 + ", order_addr2=" + order_addr2 + ", order_msg=" + order_msg + "]";
	}
	
	
	
	
	
	
	

}
