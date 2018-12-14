package com.moamoa.dto;

public class WordcloudDTO {
	private String HOTELNAME;
	private String HOTELADDR;
	private String POS;
	private String NEG;
	public WordcloudDTO() {
		super();
	}
	public WordcloudDTO(String hOTELNAME, String hOTELADDR, String pOS, String nEG) {
		super();
		HOTELNAME = hOTELNAME;
		HOTELADDR = hOTELADDR;
		POS = pOS;
		NEG = nEG;
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
	public String getPOS() {
		return POS;
	}
	public void setPOS(String pOS) {
		POS = pOS;
	}
	public String getNEG() {
		return NEG;
	}
	public void setNEG(String nEG) {
		NEG = nEG;
	}
	@Override
	public String toString() {
		return "Wordcloud [HOTELNAME=" + HOTELNAME + ", HOTELADDR=" + HOTELADDR + ", POS=" + POS + ", NEG=" + NEG + "]";
	}
	
	
}
