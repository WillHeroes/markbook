package com.markbook.domain;

import java.sql.Date;

public class bidlistVO {

	private int bid_num;
	private String bid_m_id;
	private String bid_price;
	private Date bid_date;
	private int b2_num;

	public int getBid_num() {
		return bid_num;
	}

	public void setBid_num(int bid_num) {
		this.bid_num = bid_num;
	}

	public String getBid_m_id() {
		return bid_m_id;
	}

	public void setBid_m_id(String bid_m_id) {
		this.bid_m_id = bid_m_id;
	}

	public String getBid_price() {
		return bid_price;
	}

	public void setBid_price(String bid_price) {
		this.bid_price = bid_price;
	}

	public Date getBid_date() {
		return bid_date;
	}

	public void setBid_date(Date bid_date) {
		this.bid_date = bid_date;
	}

	public int getB2_num() {
		return b2_num;
	}

	public void setB2_num(int b2_num) {
		this.b2_num = b2_num;
	}

	@Override
	public String toString() {
		return "bidlistVO [bid_num=" + bid_num + ", bid_m_id=" + bid_m_id + ", bid_price=" + bid_price + ", bid_date="
				+ bid_date + ", b2_num=" + b2_num + "]";
	}
	
	

}
