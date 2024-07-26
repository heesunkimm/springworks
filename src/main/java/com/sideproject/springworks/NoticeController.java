package com.sideproject.springworks;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sideproject.springworks.dto.NoticeDTO;
import com.sideproject.springworks.service.NoticeMapper;



@Controller
public class NoticeController {

	@Autowired
	NoticeMapper mapper;
	
	// 사용자 - 공지사항
	@RequestMapping("/user_notice.do") 
	public String userNotice(HttpServletRequest req, 
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum){
		
		int noticeCount = mapper.getNoticeCount();		
		int pageSize = 10;
		int startRow = (pageNum-1) * pageSize + 1; // 페이지별로 시작 넘버
		int endRow = startRow + pageSize - 1; // 페이지별로 끝 넘버		
		if (endRow > noticeCount) endRow = noticeCount;		
		int no = noticeCount-startRow + 1;				
		int pageBlock = 3; 		
		int pageCount = noticeCount/pageSize + (noticeCount%pageSize == 0 ? 0 : 1);		
		int startPage = (pageNum-1)/pageBlock * pageBlock +1;		
		int endPage = startPage + pageBlock -1;		
		if(endPage > pageCount) endPage = pageCount;				
		
		Map<String, Object> params = new HashMap<>();
		params.put("startRow", startRow);
		params.put("endRow", endRow);
		
		List<NoticeDTO> noticeList = mapper.listNotice(params);
		
		req.setAttribute("noticeList", noticeList);
		return "notice/notice";
		
	}
	
}
