package com.moamoa.dto;

public class HotelKeywordDTO {

	
	private String HOTEL_SEQ;
	private String HOTELNAME;
	private String HOTELADDR;
	private String POS_1;
	private String POS_2;
	private String POS_3;
	private String POS_4;
	private String POS_5;
	private String NEG_1;
	private String NEG_2;
	private String NEG_3;
	private String NEG_4;
	private String NEG_5;
	
	
	
	
	
	public HotelKeywordDTO() {
		super();
	}





	public HotelKeywordDTO(String hOTEL_SEQ, String hOTELNAME, String hOTELADDR, String pOS_1, String pOS_2,
			String pOS_3, String pOS_4, String pOS_5, String nEG_1, String nEG_2, String nEG_3, String nEG_4,
			String nEG_5) {
		super();
		HOTEL_SEQ = hOTEL_SEQ;
		HOTELNAME = hOTELNAME;
		HOTELADDR = hOTELADDR;
		POS_1 = pOS_1;
		POS_2 = pOS_2;
		POS_3 = pOS_3;
		POS_4 = pOS_4;
		POS_5 = pOS_5;
		NEG_1 = nEG_1;
		NEG_2 = nEG_2;
		NEG_3 = nEG_3;
		NEG_4 = nEG_4;
		NEG_5 = nEG_5;
	}





	public String getHOTEL_SEQ() {
		return HOTEL_SEQ;
	}





	public void setHOTEL_SEQ(String hOTEL_SEQ) {
		HOTEL_SEQ = hOTEL_SEQ;
	}





	public String getHOTELNAME() {
		return HOTELNAME;
	}





	public void setHOTELNAME(String hOTELNAME) {
		HOTELNAME = hOTELNAME;
	}





	public String getHOTELADDR() {
		return HOTELADDR;
	}





	public void setHOTELADDR(String hOTELADDR) {
		HOTELADDR = hOTELADDR;
	}





	public String getPOS_1() {
		return POS_1;
	}





	public void setPOS_1(String pOS_1) {
		POS_1 = pOS_1;
	}





	public String getPOS_2() {
		return POS_2;
	}





	public void setPOS_2(String pOS_2) {
		POS_2 = pOS_2;
	}





	public String getPOS_3() {
		return POS_3;
	}





	public void setPOS_3(String pOS_3) {
		POS_3 = pOS_3;
	}





	public String getPOS_4() {
		return POS_4;
	}





	public void setPOS_4(String pOS_4) {
		POS_4 = pOS_4;
	}





	public String getPOS_5() {
		return POS_5;
	}





	public void setPOS_5(String pOS_5) {
		POS_5 = pOS_5;
	}





	public String getNEG_1() {
		return NEG_1;
	}





	public void setNEG_1(String nEG_1) {
		NEG_1 = nEG_1;
	}





	public String getNEG_2() {
		return NEG_2;
	}





	public void setNEG_2(String nEG_2) {
		NEG_2 = nEG_2;
	}





	public String getNEG_3() {
		return NEG_3;
	}





	public void setNEG_3(String nEG_3) {
		NEG_3 = nEG_3;
	}





	public String getNEG_4() {
		return NEG_4;
	}





	public void setNEG_4(String nEG_4) {
		NEG_4 = nEG_4;
	}





	public String getNEG_5() {
		return NEG_5;
	}





	public void setNEG_5(String nEG_5) {
		NEG_5 = nEG_5;
	}





	@Override
	public String toString() {
		return "HotelKeywordDTO [HOTEL_SEQ=" + HOTEL_SEQ + ", HOTELNAME=" + HOTELNAME + ", HOTELADDR=" + HOTELADDR
				+ ", POS_1=" + POS_1 + ", POS_2=" + POS_2 + ", POS_3=" + POS_3 + ", POS_4=" + POS_4 + ", POS_5=" + POS_5
				+ ", NEG_1=" + NEG_1 + ", NEG_2=" + NEG_2 + ", NEG_3=" + NEG_3 + ", NEG_4=" + NEG_4 + ", NEG_5=" + NEG_5
				+ "]";
	}
	
	
	
	
	
}
