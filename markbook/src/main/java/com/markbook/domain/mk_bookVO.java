package com.markbook.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class mk_bookVO {

	private int b_num;
	private String b_name;
	private String b_category;
	private String b_image;
	private String b_content;
	private int b_count;
	private String b_writer;
	private String b_publisher;
	private Date b_regdate;
	private int b_able;
	private int b_amount;
	private String fileName;
	private MultipartFile uploadFile;
	
	
	
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_category() {
		return b_category;
	}
	public void setB_category(String b_category) {
		this.b_category = b_category;
	}
	public String getB_image() {
		return b_image;
	}
	public void setB_image(String b_image) {
		this.b_image = b_image;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public int getB_count() {
		return b_count;
	}
	public void setB_count(int b_count) {
		this.b_count = b_count;
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
	public Date getB_regdate() {
		return b_regdate;
	}
	public void setB_regdate(Date b_regdate) {
		this.b_regdate = b_regdate;
	}
	public int getB_able() {
		return b_able;
	}
	public void setB_able(int b_able) {
		this.b_able = b_able;
	}
	public int getB_amount() {
		return b_amount;
	}
	public void setB_amount(int b_amount) {
		this.b_amount = b_amount;
	}	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	
	@Override
	public String toString() {
		return "mk_bookVO [b_num=" + b_num + ", b_name=" + b_name + ", b_category=" + b_category + ", b_image="
				+ b_image + ", b_content=" + b_content + ", b_count=" + b_count + ", b_writer=" + b_writer
				+ ", b_publisher=" + b_publisher + ", b_regdate=" + b_regdate + ", b_able=" + b_able + ", b_amount="
				+ b_amount + ", fileName=" + fileName + ", uploadFile=" + uploadFile + "]";
	}
	

	
}
