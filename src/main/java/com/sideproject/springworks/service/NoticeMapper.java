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
	
//	// ����� - ��������
//	public List<NoticeDTO> listNotice(Map<String, Object> params){ 
//		List<NoticeDTO> listNotice = sqlSession.selectList("listNotice", params);
//		return listNotice;
//	}
//	
//	// �������� �Ǽ�
//	public int getNoticeCount() {
//		int noticeCount = sqlSession.selectOne("getNoticeCount");
//		return noticeCount;
//	}
	
	
	
	
}
