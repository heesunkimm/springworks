package com.sideproject.springworks;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sideproject.springworks.service.ApprovMapper;

@Controller
public class ApprovController {
	
	@Autowired
	ApprovMapper mapper;
	
//	// 게스트 - 메인 페이지
//	@RequestMapping("/guest_index.do") 
//	public String guestIndex(HttpServletRequest req, 
//			@RequestParam(value = "sort", required = false, defaultValue = "score") String sort){
//
//		// 테마 아이콘
//		List<ThemeDTO> list = mapper.listTheme();
//		req.setAttribute("listTheme", list);			
//
//		// 테마별 숙소 리스트 (정렬 적용)
//		Map<String, List<HouseDTO>> housesByTheme = new HashMap<>();
//		for (ThemeDTO theme : list) {
//			if(theme.getHtheme().equals("htheme01")) {
//				List<HouseDTO> listHouse = mapper.listHouse(sort);
//				housesByTheme.put("htheme01", listHouse);
//			}else {
//				List<HouseDTO> listHousebyTheme = mapper.listHousebyTheme(theme.getHtheme(), sort);
//		        housesByTheme.put(theme.getHtheme(), listHousebyTheme);
//			}		        
//	    }
//	}
	
}
