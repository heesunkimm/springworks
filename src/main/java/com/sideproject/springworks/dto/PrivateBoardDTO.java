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
 
	 // ��¥ ������ ��ȯ�ϴ� �޼��� �߰�
    public String getFormattedDate() {
    	// ���� ��¥ ���� 
        SimpleDateFormat originalFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        // ���ϴ� ��¥ ���� 
        SimpleDateFormat targetFormat = new SimpleDateFormat("yyyy-MM-dd");  
        // Date ��ü �ʱ�ȭ 
        Date date = null;
        try {
        	// // privateBoard_date ���ڿ��� originalFormat�� �°� �Ľ��Ͽ� Date ��ü�� ��ȯ
            date = originalFormat.parse(privateBoard_date);
        } catch (ParseException e) {
        	// �Ľ� �� ������ �߻��ϸ� ���� Ʈ���̽��� ���
            e.printStackTrace();
        }
        // date ��ü�� null�� �ƴ� ��� targetFormat���� �������Ͽ� ���ڿ��� ��ȯ�մϴ�.
        // date ��ü�� null�� ��� ������ privateBoard_date ���ڿ��� ��ȯ�մϴ�.
        return date != null ? targetFormat.format(date) : privateBoard_date;
    }
	 
	 
}
