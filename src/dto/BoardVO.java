package dto;

import java.sql.Date;

public class BoardVO {
	
	private int bnum;
	private String subject;
	private String writer;
	private Date bdate;
	private int views;
	private String bcon;
	
	
	public BoardVO() {
		super();
	}
	
	public BoardVO(String subject, String writer) {
		super();
		this.subject = subject;
		this.writer = writer;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getBcon() {
		return bcon;
	}
	public void setBcon(String bcon) {
		this.bcon = bcon;
	}

}

