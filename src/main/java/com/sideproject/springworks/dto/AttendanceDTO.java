package com.sideproject.springworks.dto;

import java.util.Date;

public class AttendanceDTO {
	private int attendId;
	private String userId;
	private Date attendCheckInTime;
	private Date attendCheckOutTime;
	private Date attendDate;
	private String attendWeekday;
	
	
	public int getAttendId() {
		return attendId;
	}
	public void setAttendId(int attendId) {
		this.attendId = attendId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getAttendCheckInTime() {
		return attendCheckInTime;
	}
	public void setAttendCheckInTime(Date attendCheckInTime) {
		this.attendCheckInTime = attendCheckInTime;
	}
	public Date getAttendCheckOutTime() {
		return attendCheckOutTime;
	}
	public void setAttendCheckOutTime(Date attendCheckOutTime) {
		this.attendCheckOutTime = attendCheckOutTime;
	}
	public Date getAttendDate() {
		return attendDate;
	}
	public void setAttendDate(Date attendDate) {
		this.attendDate = attendDate;
	}
	public String getAttendWeekday() {
		return attendWeekday;
	}
	public void setAttendWeekday(String attendWeekday) {
		this.attendWeekday = attendWeekday;
	}
	
	
	
}
