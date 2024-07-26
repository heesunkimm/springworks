package com.sideproject.springworks;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sideproject.springworks.dto.ScheduleDTO;
import com.sideproject.springworks.service.ScheduleMapper;


@Controller
public class ScheduleController {
	//
	@Autowired
	ScheduleMapper scheduleMapper;
	
	
}