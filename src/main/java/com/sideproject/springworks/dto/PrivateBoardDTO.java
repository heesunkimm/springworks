package com.sideproject.springworks.dto;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PrivateBoardDTO {
	private int privateBoard_num;
	private String privateBoard_title;
	private String privateBoard_content;
	private String privateBoard_writer;
	private String privateBoard_date;
	private int privateBoard_readCount;
	
	public int getPrivateBoard_num() {
		return privateBoard_num;
	}
	public void setPrivateBoard_num(int privateBoard_num) {
		this.privateBoard_num = privateBoard_num;
	}
	public String getPrivateBoard_title() {
		return privateBoard_title;
	}
	public void setPrivateBoard_title(String privateBoard_title) {
		this.privateBoard_title = privateBoard_title;
	}
	public String getPrivateBoard_content() {
		return privateBoard_content;
	}
	public void setPrivateBoard_content(String privateBoard_content) {
		this.privateBoard_content = privateBoard_content;
	}
	public String getPrivateBoard_writer() {
		return privateBoard_writer;
	}
	public void setPrivateBoard_writer(String privateBoard_writer) {
		this.privateBoard_writer = privateBoard_writer;
	}
	public String getPrivateBoard_date() {
		return privateBoard_date;
	}
	public void setPrivateBoard_date(String privateBoard_date) {
		this.privateBoard_date = privateBoard_date;
	}
	public int getPrivateBoard_readCount() {
		return privateBoard_readCount;
	}
	public void setPrivateBoard_readCount(int privateBoard_readCount) {
		this.privateBoard_readCount = privateBoard_readCount;
	}
 
	 // 날짜 형식을 반환하는 메서드 추가
    public String getFormattedDate() {
    	// 기존 날짜 형식 
        SimpleDateFormat originalFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        // 원하는 날짜 형식 
        SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd");  
        // Date 객체 초기화 
        Date date = null;
        try {
        	// // privateBoard_date 문자열을 originalFormat에 맞게 파싱하여 Date 객체로 변환
            date = originalFormat.parse(privateBoard_date);
        } catch (ParseException e) {
        	// 파싱 중 오류가 발생하면 스택 트레이스를 출력
            e.printStackTrace();
        }
        // date 객체가 null이 아닌 경우 targetFormat으로 포맷팅하여 문자열로 반환합니다.
        // date 객체가 null인 경우 원래의 privateBoard_date 문자열을 반환합니다.
        return date != null ? targetFormat.format(date) : privateBoard_date;
    }
	 
	 
}
