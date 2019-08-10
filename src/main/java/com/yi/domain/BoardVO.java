package com.yi.domain;

import java.util.Date;

public class BoardVO {
	
	private int bno;
	private String title;
	private String content;
	private Date regdate;
	private int viewcnt;
	private CustomerVO writer;
	
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public CustomerVO getWriter() {
		return writer;
	}
	public void setWriter(CustomerVO writer) {
		this.writer = writer;
	}
	
	
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", content=" + content + ", regdate=" + regdate
				+ ", viewcnt=" + viewcnt + ", writer=" + writer + "]";
	}
	
	
}
