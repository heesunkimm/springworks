package com.sideproject.springworks.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sideproject.springworks.dto.AttendanceDTO;
import com.sideproject.springworks.dto.OffDTO;

@Service
public class AttendMapper {
	@Autowired
	private SqlSession sqlSession;
	
	public List<AttendanceDTO> attendList() {
		List<AttendanceDTO> result = sqlSession.selectList("attendList");
        System.out.println("Query result: " + result);
        return result;
	}
	
	public OffDTO off() {
		return sqlSession.selectOne("off");
	}
	
	public int saveStartTime(String startTime) {
        return sqlSession.insert("insertStartTime",startTime); 
    }
	
	/*
	 public List<AttendanceDTO> getAttendanceByMonth(int year, int month) {
	        Map<String, Object> params = new HashMap<>();
	        params.put("year", year);
	        params.put("month", month);
	        return sqlSession.selectList("selectAttendanceByMonth", params);
	    }
    
    public OffDTO getOffNumByYear(int year) {
        return sqlSession.selectOne("selectOffNumByYear", year);
    }*/
    
//    public List<OffDTO> getOffListByYear(int year) {
//        return attendanceMapper.selectOffListByYear(year);
//    }
}
