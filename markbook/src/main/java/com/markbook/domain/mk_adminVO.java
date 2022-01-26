package com.markbook.domain;

public class mk_adminVO {
	
	private String meta;
	private String value;
	
	public String getMeta() {
		return meta;
	}
	public void setMeta(String meta) {
		this.meta = meta;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	@Override
	public String toString() {
		return "mk_adminVO [meta=" + meta + ", value=" + value + "]";
	}
	

}
