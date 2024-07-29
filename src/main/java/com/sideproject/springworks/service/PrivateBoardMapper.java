package com.sideproject.springworks.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sideproject.springworks.dto.PrivateBoardDTO;

@Service
public class PrivateBoardMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 익명게시판 - 메인 
	public List<PrivateBoardDTO> privateBoard(){
		List<PrivateBoardDTO> list = sqlSession.selectList("privateBoard");
		return list;
	}
 
	// 익명게시판 - 공지 사항 등록하는 페이지로 이동
	public int insertBoard(PrivateBoardDTO dto) {
		int res = sqlSession.insert("insertBoard",dto);
		return res;
	}
	
	

	
	
}
