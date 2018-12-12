package com.moamoa.dto;

public class hotelDTO {
	private int hotelbno;
	private String hotelname;
	private String hoteladdr;
	private String writer;
	private String score;
	private String title;
	private String review_neg;
	private String review_pos;
	private String write_date;
	private String summary;
	private String hotelimg;
	
	private String hotel_seq;
	private String hoteladdrgu;
	
	
	public hotelDTO() {
		super();
	}

	
	public hotelDTO(String hotelname, String hoteladdr, String summary, String hotelimg) {
		super();
		this.hotelname = hotelname;
		this.hoteladdr = hoteladdr;
		this.summary = summary;
		this.hotelimg = hotelimg;
	}


	public hotelDTO(String writer, String score, String title, String review_neg, String review_pos,
			String write_date) {
		super();
		this.writer = writer;
		this.score = score;
		this.title = title;
		this.review_neg = review_neg;
		this.review_pos = review_pos;
		this.write_date = write_date;
	}


	public hotelDTO(int hotelbno, String hotelname, String hoteladdr, String writer, String score, String title,
			String review_neg, String review_pos, String write_date, String summary, String hotelimg) {
		super();
		this.hotelbno = hotelbno;
		this.hotelname = hotelname;
		this.hoteladdr = hoteladdr;
		this.writer = writer;
		this.score = score;
		this.title = title;
		this.review_neg = review_neg;
		this.review_pos = review_pos;
		this.write_date = write_date;
		this.summary = summary;
		this.hotelimg = hotelimg;
	}


	public hotelDTO(String hotelname, String writer, String score, String title, String review_neg, String review_pos,
			String write_date) {
		super();
		this.hotelname = hotelname;
		this.writer = writer;
		this.score = score;
		this.title = title;
		this.review_neg = review_neg;
		this.review_pos = review_pos;
		this.write_date = write_date;
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


	public int getHotelbno() {
		return hotelbno;
	}


	public void setHotelbno(int hotelbno) {
		this.hotelbno = hotelbno;
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


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public String getScore() {
		return score;
	}


	public void setScore(String score) {
		this.score = score;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getReview_neg() {
		return review_neg;
	}


	public void setReview_neg(String review_neg) {
		this.review_neg = review_neg;
	}


	public String getReview_pos() {
		return review_pos;
	}


	public void setReview_pos(String review_pos) {
		this.review_pos = review_pos;
	}


	public String getWrite_date() {
		return write_date;
	}


	public void setWrite_date(String write_date) {
		this.write_date = write_date;
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
		return "hotelDTO [hotelbno=" + hotelbno + ", hotelname=" + hotelname + ", hoteladdr=" + hoteladdr + ", writer="
				+ writer + ", score=" + score + ", title=" + title + ", review_neg=" + review_neg + ", review_pos="
				+ review_pos + ", write_date=" + write_date + ", summary=" + summary + ", hotelimg=" + hotelimg + "]";
	}

}
