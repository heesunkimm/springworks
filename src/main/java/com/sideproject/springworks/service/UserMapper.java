package com.sideproject.springworks.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sideproject.springworks.dto.UserDTO;

@Service
public class UserMapper {
	@Autowired
	private SqlSession sqlSession;

}
