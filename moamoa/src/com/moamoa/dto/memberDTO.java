package com.moamoa.dto;

public class memberDTO {
	private String id;
	private String pw;
	private String nik;
	
	
	public memberDTO() {
		super();
	}
	public memberDTO(String id, String pw, String nik) {
		super();
		this.id = id;
		this.pw = pw;
		this.nik = nik;
	}
	
	
	
	public memberDTO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNik() {
		return nik;
	}
	public void setNik(String nik) {
		this.nik = nik;
	}
	@Override
	public String toString() {
		return "memberDTO [id=" + id + ", pw=" + pw + ", nik=" + nik + "]";
	}
	
	
	
	
	
}
