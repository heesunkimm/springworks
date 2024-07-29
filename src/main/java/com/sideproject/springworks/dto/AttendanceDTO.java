package com.sideproject.springworks.dto;

import java.util.Date;

public class AttendanceDTO {
    private int attend_id;
    private String user_id;
    private String attend_check_in_time;
    private String attend_check_out_time;
    private Date attend_date;
    private String attend_weekday;
    private String workingHours;

    

	
    public String getWorkingHours() {
		return workingHours;
	}

	public void setWorkingHours(String workingHours) {
		this.workingHours = workingHours;
	}

	public int getAttend_id() {
        return attend_id;
    }

    public void setAttend_id(int attend_id) {
        this.attend_id = attend_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getAttend_check_in_time() {
        return attend_check_in_time;
    }

    public void setAttend_check_in_time(String attend_check_in_time) {
        this.attend_check_in_time = attend_check_in_time;
    }

    public String getAttend_check_out_time() {
        return attend_check_out_time;
    }

    public void setAttend_check_out_time(String attend_check_out_time) {
        this.attend_check_out_time = attend_check_out_time;
    }

    public Date getAttend_date() {
        return attend_date;
    }

    public void setAttend_date(Date attend_date) {
        this.attend_date = attend_date;
    }

    public String getAttend_weekday() {
        return attend_weekday;
    }

    public void setAttend_weekday(String attend_weekday) {
        this.attend_weekday = attend_weekday;
    }
}
