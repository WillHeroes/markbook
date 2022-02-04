package com.markbook.domain;

import java.sql.Timestamp;

public class mk_calendarVO {

	private int cal_num;
	private int bor_num;
	private String bor_m_id;
	private String title;
	private String cal_content;
	private Timestamp cal_start;
	private Timestamp cal_end;
	private Timestamp cal_rental;
	private Timestamp cal_real_end;
	private int cal_flag;
	
	public int getCal_num() {
		return cal_num;
	}
	public void setCal_num(int cal_num) {
		this.cal_num = cal_num;
	}
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCal_content() {
		return cal_content;
	}
	public void setCal_content(String cal_content) {
		this.cal_content = cal_content;
	}
	public Timestamp getCal_start() {
		return cal_start;
	}
	public void setCal_start(Timestamp cal_start) {
		this.cal_start = cal_start;
	}
	public Timestamp getCal_end() {
		return cal_end;
	}
	public void setCal_end(Timestamp cal_end) {
		this.cal_end = cal_end;
	}
	public Timestamp getCal_rental() {
		return cal_rental;
	}
	public void setCal_rental(Timestamp cal_rental) {
		this.cal_rental = cal_rental;
	}
	public Timestamp getCal_real_end() {
		return cal_real_end;
	}
	public void setCal_real_end(Timestamp cal_real_end) {
		this.cal_real_end = cal_real_end;
	}
	public int getCal_flag() {
		return cal_flag;
	}
	public void setCal_flag(int cal_flag) {
		this.cal_flag = cal_flag;
	}
	@Override
	public String toString() {
		return "mk_calendarVO [cal_num=" + cal_num + ", bor_num=" + bor_num + ", bor_m_id=" + bor_m_id + ", title="
				+ title + ", cal_content=" + cal_content + ", cal_start=" + cal_start + ", cal_end=" + cal_end
				+ ", cal_rental=" + cal_rental + ", cal_real_end=" + cal_real_end + ", cal_flag=" + cal_flag + "]";
	}
	
}
