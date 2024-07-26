package com.sideproject.springworks.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sideproject.springworks.dto.PrivateBoardDTO;

@Service
public class PrivateBoardMapper {
	@Autowired
	private SqlSession sqlSession;
	
	//공지 사항 등록
	public int insertNotice(PrivateBoardDTO dto) {
		int res = sqlSession.insert("insertNotice",dto);
		return res;
	}
	
	
}
