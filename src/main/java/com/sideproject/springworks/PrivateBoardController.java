package com.sideproject.springworks;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sideproject.springworks.dto.PrivateBoardDTO;
import com.sideproject.springworks.service.PrivateBoardMapper;

@Controller
public class PrivateBoardController {
	
	@Autowired
	PrivateBoardMapper privateBoardMapper;
	
	// �͸� �Խ��� main
	@RequestMapping(value = "/board.do")
	public String privateBoard(HttpServletRequest req) {
		List<PrivateBoardDTO> list = privateBoardMapper.privateBoard();
		System.out.println(list);
		req.setAttribute("privateBoard", list);
		return "user/board/board";
	}
	
	// �������� ������ �̵�  
	@RequestMapping(value = "/insert_notice.do", method = RequestMethod.GET)
	public String moveBoardPage() {
		return "user/works/insert_notice";
	}
	
	// �������� ��� 
	@RequestMapping(value = "/insert_notice.do", method = RequestMethod.POST)
	public String writeBoardPage(HttpServletRequest req, PrivateBoardDTO dto) {
		 int res = privateBoardMapper.insertBoard(dto);
		 return "redirect:board.do";
	}
	
 
 
	
 
 
	 
	
	
 
	
	
}
