package com.sideproject.springworks;

import java.io.File;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.YearMonth;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sideproject.springworks.service.MailMapper;

@Controller  // 에노테이션-길잡이라는 뜻 지금부터 나온 얘는 뭐야 라고 알려주는거
public class MailController {
	
	@Autowired // service로 등록했던 애들 가져다 사용할 수 있음
	MailMapper hostMapper;
	
	List<MultipartFile> images;
	
	// 숙소 이미지 저장 
	@RequestMapping("/mailbox.do")
   public String mailbox() { 
		         
		return "user/mailbox/mailbox";
		
   }
	
				
	
}
