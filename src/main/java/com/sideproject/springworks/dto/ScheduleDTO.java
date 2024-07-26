package com.sideproject.springworks.dto;

public class ScheduleDTO {
	private int schedule_num;
	private String schedule_title;
	private String schedule_content;
	private String schedule_writer;
	private String schedule_insertdate;
	private String schedule_startdate;
	private String schedule_enddate;
	private String schedule_status;
	
	public int getSchedule_num() {
		return schedule_num;
	}
	public void setSchedule_num(int schedule_num) {
		this.schedule_num = schedule_num;
	}
	public String getSchedule_title() {
		return schedule_title;
	}
	public void setSchedule_title(String schedule_title) {
		this.schedule_title = schedule_title;
	}
	public String getSchedule_content() {
		return schedule_content;
	}
	public void setSchedule_content(String schedule_content) {
		this.schedule_content = schedule_content;
	}
	public String getSchedule_writer() {
		return schedule_writer;
	}
	public void setSchedule_writer(String schedule_writer) {
		this.schedule_writer = schedule_writer;
	}
	public String getSchedule_insertdate() {
		return schedule_insertdate;
	}
	public void setSchedule_insertdate(String schedule_insertdate) {
		this.schedule_insertdate = schedule_insertdate;
	}
	public String getSchedule_startdate() {
		return schedule_startdate;
	}
	public void setSchedule_startdate(String schedule_startdate) {
		this.schedule_startdate = schedule_startdate;
	}
	public String getSchedule_enddate() {
		return schedule_enddate;
	}
	public void setSchedule_enddate(String schedule_enddate) {
		this.schedule_enddate = schedule_enddate;
	}
	public String getSchedule_status() {
		return schedule_status;
	}
	public void setSchedule_status(String schedule_status) {
		this.schedule_status = schedule_status;
	}
}
