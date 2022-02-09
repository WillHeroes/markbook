package com.markbook.domain;

import java.sql.Timestamp;

public class mk_calendarVO {

	private int cal_num;
	private int bor_num;
	private String bor_m_id;
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
	public int getCal_flag() {
		return cal_flag;
	}
	public void setCal_flag(int cal_flag) {
		this.cal_flag = cal_flag;
	}
	@Override
	public String toString() {
		return "mk_calendarVO [cal_num=" + cal_num + ", bor_num=" + bor_num + ", bor_m_id=" + bor_m_id + ", cal_flag="
				+ cal_flag + "]";
	}
	
}
