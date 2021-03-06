package com.moamoa.dto;

import java.util.Date;

public class ReplyDTO {
	private int rno;
	private String content;
    private String writer;
    private String nik;
    private Date regdate;
    private int bno;
	
    public ReplyDTO() {
		super();
	}


	public ReplyDTO(int rno, String content, String writer, String nik, Date regdate, int bno) {
		super();
		this.rno = rno;
		this.content = content;
		this.writer = writer;
		this.nik = nik;
		this.regdate = regdate;
		this.bno = bno;
	}


	public ReplyDTO(String content, String writer, int bno) {
		super();
		this.content = content;
		this.writer = writer;
		this.bno = bno;
	}
	

	public ReplyDTO(String content, String writer, String nik, int bno) {
		super();
		this.content = content;
		this.writer = writer;
		this.nik = nik;
		this.bno = bno;
	}


	public String getNik() {
		return nik;
	}


	public void setNik(String nik) {
		this.nik = nik;
	}


	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}


	@Override
	public String toString() {
		return "ReplyDTO [rno=" + rno + ", content=" + content + ", writer=" + writer + ", nik=" + nik + ", regdate="
				+ regdate + ", bno=" + bno + "]";
	}

	
    
    
}
