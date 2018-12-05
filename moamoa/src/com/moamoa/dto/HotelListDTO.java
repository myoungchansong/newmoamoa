package com.moamoa.dto;

public class HotelListDTO {
	private int bno;
	private String hotelname;
	private String hoteladdr;
	private String summary;
	private String hotelimg;
	
	public HotelListDTO() {
		super();
	}
	public HotelListDTO(int bno, String hotelname, String hoteladdr, String summary, String hotelimg) {
		super();
		this.bno = bno;
		this.hotelname = hotelname;
		this.hoteladdr = hoteladdr;
		this.summary = summary;
		this.hotelimg = hotelimg;
	}
	public HotelListDTO(String hotelname, String hoteladdr, String summary, String hotelimg) {
		super();
		this.hotelname = hotelname;
		this.hoteladdr = hoteladdr;
		this.summary = summary;
		this.hotelimg = hotelimg;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getHotelname() {
		return hotelname;
	}
	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}
	public String getHoteladdr() {
		return hoteladdr;
	}
	public void setHoteladdr(String hoteladdr) {
		this.hoteladdr = hoteladdr;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getHotelimg() {
		return hotelimg;
	}
	public void setHotelimg(String hotelimg) {
		this.hotelimg = hotelimg;
	}
	@Override
	public String toString() {
		return "HotelListDTO [bno=" + bno + ", hotelname=" + hotelname + ", hoteladdr=" + hoteladdr + ", summary="
				+ summary + ", hotelimg=" + hotelimg + "]";
	}
	
}
