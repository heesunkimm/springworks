package com.sideproject.springworks;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sideproject.springworks.dto.UserDTO;
import com.sideproject.springworks.service.UserMapper;

@Controller
public class UserController {
	
	@Autowired
	UserMapper userMapper;
	
	@RequestMapping(value = {"/", "/login.do"}, method = RequestMethod.GET)
	public String login(HttpServletRequest req) {
		return "login";
	}
	
	@RequestMapping(value = {"/edit_info.do"}, method = RequestMethod.GET)
	public String editInfo(HttpServletRequest req) {
		
		return "user/edit/edit_info";
	}
	
	@RequestMapping(value = {"/works.do"}, method = RequestMethod.GET)
	public String works(HttpServletRequest req) {
		
		return "user/works/works";
	}
	
}