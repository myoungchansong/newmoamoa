package com.moamoa.dto;

public class SgDTO {
	private String hotelname;
	private String hotel_seq;
	private String hoteladdrgu;
	private String scoregaph;
	
	
	public SgDTO() {
		super();
	}


	public SgDTO(String hotelname, String hotel_seq, String hoteladdrgu, String scoregaph) {
		super();
		this.hotelname = hotelname;
		this.hotel_seq = hotel_seq;
		this.hoteladdrgu = hoteladdrgu;
		this.scoregaph = scoregaph;
	}
	


	public SgDTO(String scoregaph) {
		super();
		this.scoregaph = scoregaph;
	}


	public String getHotelname() {
		return hotelname;
	}


	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}


	public String getHotel_seq() {
		return hotel_seq;
	}


	public void setHotel_seq(String hotel_seq) {
		this.hotel_seq = hotel_seq;
	}


	public String getHoteladdrgu() {
		return hoteladdrgu;
	}


	public void setHoteladdrgu(String hoteladdrgu) {
		this.hoteladdrgu = hoteladdrgu;
	}


	public String getScoregaph() {
		return scoregaph;
	}


	public void setScoregaph(String scoregaph) {
		this.scoregaph = scoregaph;
	}


	@Override
	public String toString() {
		return "SgDTO [hotelname=" + hotelname + ", hotel_seq=" + hotel_seq + ", hoteladdrgu=" + hoteladdrgu
				+ ", scoregaph=" + scoregaph + "]";
	}
	
	
	
}
