package com.sideproject.springworks.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sideproject.springworks.dto.NoticeDTO;

@Service
public class NoticeMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 사용자 - 공지사항
	public List<NoticeDTO> listNotice(Map<String, Object> params){ 
		List<NoticeDTO> listNotice = sqlSession.selectList("listNotice", params);
		return listNotice;
	}
	
	// 공지사항 건수
	public int getNoticeCount() {
		int noticeCount = sqlSession.selectOne("getNoticeCount");
		return noticeCount;
	}
	
	
	
	
}
