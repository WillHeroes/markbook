package com.markbook.domain;

public class mk_calendarTempVO {

	private int id;
	private String title;
	private String start;
	private String end;
	private String backgroundColor;
	private String textColor;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public String getBackgroundColor() {
		return backgroundColor;
	}
	public void setBackgroundColor(String backgroundColor) {
		this.backgroundColor = backgroundColor;
	}
	public String getTextColor() {
		return textColor;
	}
	public void setTextColor(String textColor) {
		this.textColor = textColor;
	}
	@Override
	public String toString() {
		return "mk_calendarTempVO [id=" + id + ", title=" + title + ", start=" + start + ", end=" + end
				+ ", backgroundColor=" + backgroundColor + ", textColor=" + textColor + "]";
	}
	
}
