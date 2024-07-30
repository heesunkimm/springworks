package com.sideproject.springworks.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sideproject.springworks.dto.UserDTO;

@Service
public class UserMapper {
	@Autowired
	private SqlSession sqlSession;
	
	public UserDTO findUserId(String user_id) {
		return sqlSession.selectOne("findUserId", user_id);
	}
	
	public int updatePasswd(UserDTO dto) {
		return sqlSession.update("updatePasswd", dto);
	}
	
	public int createUser(UserDTO dto) {
		return sqlSession.insert("createUser", dto);
	}
}
