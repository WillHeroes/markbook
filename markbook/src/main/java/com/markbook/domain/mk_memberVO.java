package com.markbook.domain;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class mk_memberVO {
	
	private String m_id;
	private String m_pw;
	private String m_addr1;
	private String m_addr2;
	private String m_email;
	private String m_phone;
	private String m_image;
	private Timestamp m_regdate;
	private String m_idnum1;
	private String m_idnum2;
	private int m_count;
	private int m_over;
	private String m_name;
	private int m_status;
	private MultipartFile uploadFile;
	
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_addr1() {
		return m_addr1;
	}
	public void setM_addr1(String m_addr1) {
		this.m_addr1 = m_addr1;
	}
	public String getM_addr2() {
		return m_addr2;
	}
	public void setM_addr2(String m_addr2) {
		this.m_addr2 = m_addr2;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_image() {
		return m_image;
	}
	public void setM_image(String m_image) {
		this.m_image = m_image;
	}
	public Timestamp getM_regdate() {
		return m_regdate;
	}
	public void setM_regdate(Timestamp m_regdate) {
		this.m_regdate = m_regdate;
	}
	public String getM_idnum1() {
		return m_idnum1;
	}
	public void setM_idnum1(String m_idnum1) {
		this.m_idnum1 = m_idnum1;
	}
	public String getM_idnum2() {
		return m_idnum2;
	}
	public void setM_idnum2(String m_idnum2) {
		this.m_idnum2 = m_idnum2;
	}
	public int getM_count() {
		return m_count;
	}
	public void setM_count(int m_count) {
		this.m_count = m_count;
	}
	public int getM_over() {
		return m_over;
	}
	public void setM_over(int m_over) {
		this.m_over = m_over;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getM_status() {
		return m_status;
	}
	public void setM_status(int m_status) {
		this.m_status = m_status;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	@Override
	public String toString() {
		return "mk_memberVO [m_id=" + m_id + ", m_pw=" + m_pw + ", m_addr1=" + m_addr1 + ", m_addr2=" + m_addr2
				+ ", m_email=" + m_email + ", m_phone=" + m_phone + ", m_image=" + m_image + ", m_regdate=" + m_regdate
				+ ", m_idnum1=" + m_idnum1 + ", m_idnum2=" + m_idnum2 + ", m_count=" + m_count + ", m_over=" + m_over
				+ ", m_name=" + m_name + ", m_status=" + m_status + ", uploadFile=" + uploadFile + "]";
	}


}
