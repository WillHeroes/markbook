package com.markbook.domain;

import java.sql.Date;

public class borrowVO {

	private int bor_num;
	private String bor_m_id;
	private int bor_b_num;
	private Date bor_date;
	private Date bor_redate;
	private int bor_goship;

	private String b_name;
	private String b_image;
	private String b_writer;
	private String b_publisher;

	public int getBor_num() {
		return bor_num;
	}

	public void setBor_num(int bor_num) {
		this.bor_num = bor_num;
	}

	public String getBor_m_id() {
		return bor_m_id;
	}

	public void setBor_m_id(String bor_m_id) {
		this.bor_m_id = bor_m_id;
	}

	public int getBor_b_num() {
		return bor_b_num;
	}

	public void setBor_b_num(int bor_b_num) {
		this.bor_b_num = bor_b_num;
	}

	public Date getBor_date() {
		return bor_date;
	}

	public void setBor_date(Date bor_date) {
		this.bor_date = bor_date;
	}

	public Date getBor_redate() {
		return bor_redate;
	}

	public void setBor_redate(Date bor_redate) {
		this.bor_redate = bor_redate;
	}

	public int getBor_goship() {
		return bor_goship;
	}

	public void setBor_goship(int bor_goship) {
		this.bor_goship = bor_goship;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_image() {
		return b_image;
	}

	public void setB_image(String b_image) {
		this.b_image = b_image;
	}

	public String getB_writer() {
		return b_writer;
	}

	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}

	public String getB_publisher() {
		return b_publisher;
	}

	public void setB_publisher(String b_publisher) {
		this.b_publisher = b_publisher;
	}

	@Override
	public String toString() {
		return "borrowVO [bor_num=" + bor_num + ", bor_m_id=" + bor_m_id + ", bor_b_num=" + bor_b_num + ", bor_date="
				+ bor_date + ", bor_redate=" + bor_redate + ", bor_goship=" + bor_goship + ", b_name=" + b_name
				+ ", b_image=" + b_image + ", b_writer=" + b_writer + ", b_publisher=" + b_publisher + "]";
	}

}
