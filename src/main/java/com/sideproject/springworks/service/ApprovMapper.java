package com.sideproject.springworks.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ApprovMapper {
	
	@Autowired
	private SqlSession sqlSession;
	
	// ���� - �׸� ����Ʈ
//		public List<ThemeDTO> listTheme(){ 
//			List<ThemeDTO> list = sqlSession.selectList("listTheme");
//			return list;
//		}
	
	
}
