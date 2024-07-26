package com.sideproject.springworks;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sideproject.springworks.dto.PrivateBoardDTO;
import com.sideproject.springworks.service.PrivateBoardMapper;

@Controller
public class PrivateBoardController {
	
	@Autowired
	PrivateBoardMapper privateBoardMapper;
	
//	// �α��ι�ư ������ �͸� �Խ������� �̵�
//	@RequestMapping(value = "/board.do", method = RequestMethod.POST)
//	public String login(HttpServletRequest req) {
//		return "user/board/board";
//	}
//	
//	// �������� ��� �������� �̵� 
//	@RequestMapping(value = "/insert_notice.do", method = RequestMethod.GET)
//	public String insertNoticePage() {
//		return "user/works/insert_notice";
//	}
	 
	// @RequestMapping(value = "/insert_notice.do", method = RequestMethod.POST)
	
	
 
	 
	
	
 
	
	
}
