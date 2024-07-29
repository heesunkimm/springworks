package com.sideproject.springworks.dto;

public class NoticeDTO {

	private int notice_num;
	private String notice_title;
	private String notice_content;
	private String notice_writer;
	private String notice_regDate;
	private int notice_readCount;
		
	public int getNotice_num() {
		return notice_num;
	}
	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public String getNotice_writer() {
		return notice_writer;
	}
	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}
	public String getNotice_regDate() {
		return notice_regDate;
	}
	public void setNotice_regDate(String notice_regDate) {
		this.notice_regDate = notice_regDate;
	}
	public int getNotice_readCount() {
		return notice_readCount;
	}
	public void setNotice_readCount(int notice_readCount) {
		this.notice_readCount = notice_readCount;
	}
	
	// 조인
	private String user_name;

	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
}
