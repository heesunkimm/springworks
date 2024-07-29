package com.sideproject.springworks.service;

import java.util.HashMap;
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
	
	// 공지사항 리스트
	public List<NoticeDTO> noticeList(Map<String, Object> params){ 
		List<NoticeDTO> noticeList = sqlSession.selectList("noticeList", params);
		return noticeList;
	}
	
	// 공지사항 전체 게시글 수
	public int getNoticeCount() {
		int noticeCount = sqlSession.selectOne("getNoticeCount");
		return noticeCount;
	}
	
	// 공지사항 상세
	public NoticeDTO noticeContent(int notice_num) {
		NoticeDTO noticeContent = sqlSession.selectOne("getNoticeContent", notice_num);
		return noticeContent;
	}
	
	// 공지사항 조회 수
	public int plusReadCount(int notice_num) {
		int resUpdateReadCount = sqlSession.update("updateReadCount", notice_num);
		return resUpdateReadCount;
	}
	
	// 공지사항 검색
	public List<NoticeDTO> noticeSearchResult(Map<String, Object> params){		
		List<NoticeDTO> searchResult = sqlSession.selectList("searchResult", params);
		return searchResult;		
	}
	
	// 공지사항 검색결과 수
	public int noticeSearchCount(String search, String searchString) {
		Map<String, Object> params = new HashMap<>();
		params.put("search", search);
		params.put("searchString", searchString);
		int searchCount = sqlSession.selectOne("searchCount", params);
		return searchCount;
	}
	
}
