package com.markbook.domain;

import java.sql.Date;

public class mk_requestBoardVO {

	private int r_num;
	private String r_title;
	private String r_m_id;
	public String getR_m_id() {
		return r_m_id;
	}
	public void setR_m_id(String r_m_id) {
		this.r_m_id = r_m_id;
	}
	private String r_name;
	private String r_writer;
	private String r_content;
	private int r_result;
	private Date r_upload_date;
	private String r_publisher;
	private String r_ISBN;
	private int r_price;
	private String r_admin_comment;
	
	
	public String getR_admin_comment() {
		return r_admin_comment;
	}
	public void setR_admin_comment(String r_admin_comment) {
		this.r_admin_comment = r_admin_comment;
	}
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}

	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getR_writer() {
		return r_writer;
	}
	public void setR_writer(String r_writer) {
		this.r_writer = r_writer;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public int getR_result() {
		return r_result;
	}
	public void setR_result(int r_result) {
		this.r_result = r_result;
	}
	public Date getR_upload_date() {
		return r_upload_date;
	}
	public void setR_upload_date(Date r_upload_date) {
		this.r_upload_date = r_upload_date;
	}
	public String getR_publisher() {
		return r_publisher;
	}
	public void setR_publisher(String r_publisher) {
		this.r_publisher = r_publisher;
	}

	public String getR_ISBN() {
		return r_ISBN;
	}
	public void setR_ISBN(String r_ISBN) {
		this.r_ISBN = r_ISBN;
	}
	public int getR_price() {
		return r_price;
	}
	public void setR_price(int r_price) {
		this.r_price = r_price;
	}
	@Override
	public String toString() {
		return "mk_requestBoardVO [r_num=" + r_num + ", r_title=" + r_title + ", r_m_id=" + r_m_id + ", r_name="
				+ r_name + ", r_writer=" + r_writer + ", r_content=" + r_content + ", r_result=" + r_result
				+ ", r_upload_date=" + r_upload_date + ", r_publisher=" + r_publisher + ", r_ISBN=" + r_ISBN
				+ ", r_price=" + r_price + ", r_admin_comment=" + r_admin_comment + "]";
	}

	
}
	
	
	
	
