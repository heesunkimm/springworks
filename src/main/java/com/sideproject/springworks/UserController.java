package com.sideproject.springworks;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sideproject.springworks.dto.UserDTO;
import com.sideproject.springworks.service.UserMapper;

@Controller
public class UserController {
	
	@Autowired
	UserMapper mapper;
	
	@RequestMapping(value = {"/", "/login.do"}, method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping("/login.do")
	public String loginCheck(@RequestParam Map<String, String> params, HttpServletRequest req) {
		UserDTO dto = mapper.findUserId(params.get("user_id"));
		if (dto != null) {
			if (dto.getUser_passwd().equals(params.get("user_passwd"))) {
				req.getSession().setAttribute("inUser", dto);
				req.setAttribute("msg", dto.getUser_name() + "님이 로그인 하셨습니다.");
				req.setAttribute("url", "index.do");
			} else {
				req.setAttribute("msg", "비밀번호가 틀렸습니다. 다시 확인해주세요.");
				req.setAttribute("url", "login.do");
			}
		} else {
			req.setAttribute("msg", "등록되지 않은 사번입니다. 관리자에게 문의해주세요.");
			req.setAttribute("url", "login.do");
		}
		return "message";
	}
	
//	@RequestMapping("/logout.do")
//	public String logOut(HttpServletRequest req) {
//		req.getSession().invalidate();
//		req.setAttribute("msg", "로그아웃 되었습니다.");
//		req.setAttribute("url", "login.do");
//		return "message";
//	}
	
	@RequestMapping(value = {"/index.do"}, method = RequestMethod.GET)
	public String mainPage(HttpServletRequest req) {
		HttpSession session = req.getSession();
		UserDTO dto = (UserDTO)session.getAttribute("inUser");		
		String user_id = dto.getUser_id();
		
		return "user/index";
	}

	
//	private AtomicInteger userCounter = new AtomicInteger(0); // 사용자 수 카운터
//    private LocalDate lastDay = LocalDate.now();
//
//    @PostMapping("/create_userId.ajax")
//    @ResponseBody
//    public Map<String, String> createUserId(HttpServletRequest req, HttpServletResponse resp) {
//        Map<String, String> response = new HashMap<>();
//
//        try {
//            resp.setContentType("application/json");
//            resp.setCharacterEncoding("UTF-8");
//
//            LocalDate today = LocalDate.now();
//            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
//            String formattedDate = today.format(formatter);
//
//            // 날짜가 변경되면 사용자 수 초기화
//            if (!today.equals(lastDay)) {
//                userCounter.set(0);
//                lastDay = today;
//            }
//
//            int userNumber = userCounter.incrementAndGet(); // 새로운 사용자 순서 번호 증가
//            String userId = formattedDate + userNumber; // 사번 생성
//            String userPw = userId; // 초기 비밀번호는 사번과 동일
//
//            response.put("user_id", userId);
//            response.put("user_passwd", userPw);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return response;
//    }
	
//	@RequestMapping("/create_user.do")
//	public String createUser(HttpServletRequest req, UserDTO dto) {
//		int res = mapper.createUser(dto);
//		if (res > 0) {
//			req.setAttribute("msg", "계정생성이 완료되었습니다.");
//			req.setAttribute("url", "works_id.do");
//			return "message";
//		} else {
//			req.setAttribute("msg", "계정생성에 실패하였습니다.");
//			req.setAttribute("url", "works_id.do");
//			return "message";
//		}
//	}
	
	@RequestMapping(value = {"/edit_info.do"}, method = RequestMethod.GET)
	public String editInfo(HttpServletRequest req) {
		
		return "user/edit/edit_info";
	}
	
	@RequestMapping(value = {"/works_id.do"}, method = RequestMethod.GET)
	public String works(HttpServletRequest req) {
		
		return "user/works/works_id";
	}
	
	
	
}