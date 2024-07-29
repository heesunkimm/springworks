package com.sideproject.springworks;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sideproject.springworks.service.ReservMapper;

@Controller
public class ReservController {
	
	@Autowired
	ReservMapper reservMapper;
	
	@RequestMapping(value = "/reserv.do")
	public String conference(HttpServletRequest req) {
		return "user/conference/conference";
	}
	
	@RequestMapping(value = "/index.do")
	public String index(HttpServletRequest req) {
		return "user/index";
	}

}
