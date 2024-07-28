package com.sideproject.springworks;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
		Map<String, Object> pagingMap = paging(noticeCount, pageNum);
		
		Map<String, Object> params = new HashMap<>();
		params.put("startRow", pagingMap.get("startRow"));
		params.put("endRow", pagingMap.get("endRow"));
		
		List<NoticeDTO> noticeList = mapper.noticeList(params);
		
		req.setAttribute("startPage", (int)pagingMap.get("startPage"));
		req.setAttribute("endPage", (int)pagingMap.get("endPage"));
		req.setAttribute("pageCount", (int)pagingMap.get("pageCount"));
		req.setAttribute("pageBlock", (int)pagingMap.get("pageBlock"));
		req.setAttribute("no", (int)pagingMap.get("no"));		
		req.setAttribute("noticeList", noticeList);
		
		return "user/notice/notice";
		
	}
	
	// 사용자 - 공지사항 상세
	@RequestMapping("/user_notice_content.do") 
	public String userNoticeContent(HttpServletRequest req, int notice_num){
		
		NoticeDTO noticeContent = mapper.noticeContent(notice_num);
		int resUpdateReadCount = mapper.plusReadCount(notice_num);
		req.setAttribute("noticeContent", noticeContent);			
		return "user/notice/notice_content";
	}
	
	// 사용자 - 공지사항 검색
	@RequestMapping("/user_notice_search.do")
	public String userNoticeSearch(HttpServletRequest req, String search, String searchString,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") int pageNum) {
				
		int searchCount = mapper.noticeSearchCount(search, searchString);
		Map<String, Object> pagingMap = paging(searchCount, pageNum);
		
		Map<String, Object> params = new HashMap<>();
		params.put("startRow", pagingMap.get("startRow"));
		params.put("endRow", pagingMap.get("endRow"));
		params.put("search", search);
		params.put("searchString", searchString);
		
		List<NoticeDTO> searchList = mapper.noticeSearchResult(params);
		
		req.setAttribute("startPage", (int)pagingMap.get("startPage"));
		req.setAttribute("endPage", (int)pagingMap.get("endPage"));
		req.setAttribute("pageCount", (int)pagingMap.get("pageCount"));
		req.setAttribute("pageBlock", (int)pagingMap.get("pageBlock"));
		req.setAttribute("no", (int)pagingMap.get("no"));	
		req.setAttribute("searchList", searchList);
		req.setAttribute("search", search);
		req.setAttribute("searchString", searchString);
		
		return "user/notice/notice";
	}
	
	
	
	// 페이징 처리 메서드
	public Map<String, Object> paging(int count, int pageNum) {
		int pageSize = 10; // 한 페이지에 보여질 게시글 수
		int startRow = (pageNum-1) * pageSize + 1; // 페이지별 시작 넘버
		int endRow = startRow + pageSize - 1; // 페이지별 끝 넘버
		if (endRow > count) endRow = count;		
		int no = count-startRow + 1; // 넘버링		
		int pageBlock = 3; //페이지별 보여줄 페이징번호 개수
		int pageCount = count/pageSize + (count%pageSize == 0 ? 0 : 1); //총 페이징번호 개수		
		int startPage = (pageNum-1)/pageBlock * pageBlock +1; // 페이지별 시작 페이징번호
		int endPage = startPage + pageBlock -1;	// 페이지별 끝 페이징번호
		if(endPage > pageCount) endPage = pageCount;
		
		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("pageSize", pageSize);
		pagingMap.put("no", no);
		pagingMap.put("startRow", startRow);
		pagingMap.put("endRow", endRow);
		pagingMap.put("pageBlock", pageBlock);
		pagingMap.put("pageCount", pageCount);
		pagingMap.put("startPage", startPage);
		pagingMap.put("endPage", endPage);
		
		return pagingMap;
	}
	
}
