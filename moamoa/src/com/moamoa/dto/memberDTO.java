package com.moamoa.dto;

public class memberDTO {
	private String id;
	private String pw;
	private String nik;
	private String newnik;
	
	public memberDTO() {
		super();
	}
	public memberDTO(String id, String pw, String nik) {
		super();
		this.id = id;
		this.pw = pw;
		this.nik = nik;
	}
	
	public memberDTO(String id, String pw, String nik, String newnik) {
		super();
		this.id = id;
		this.pw = pw;
		this.nik = nik;
		this.newnik = newnik;
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
	public String getNewnik() {
		return newnik;
	}
	public void setNewnik(String newnik) {
		this.newnik = newnik;
	}
	@Override
	public String toString() {
		return "memberDTO [id=" + id + ", pw=" + pw + ", nik=" + nik + ", newnik=" + newnik + "]";
	}

	
	
	
	
	
	
}
