package com.sideproject.springworks;

import java.time.Duration;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sideproject.springworks.dto.AttendanceDTO;
import com.sideproject.springworks.dto.OffDTO;
import com.sideproject.springworks.service.AttendMapper;

@Controller
public class AttendController {
	@Autowired
	AttendMapper attendMapper;
	
	
	@RequestMapping(value = "/attend.do")
	public String attendList(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("userId");	//임시로 아이디 받아오기
		List<AttendanceDTO> list = attendMapper.attendList(userId);
		OffDTO off = attendMapper.off(userId); 
		
		// 근무시간 계산
        for (AttendanceDTO attendance : list) {
            String checkInTime = attendance.getAttend_check_in_time();
            String checkOutTime = attendance.getAttend_check_out_time();
            String workingHours = calculateWorkingHours(checkInTime, checkOutTime);
            attendance.setWorkingHours(workingHours);
        }
        
		req.setAttribute("alist", list);
		req.setAttribute("offnum", off);
		return "user/attend/attend";
	}
	
	private String calculateWorkingHours(String checkInTime, String checkOutTime) {
		 // 출근시간과 퇴근시간을 LocalTime으로 변환
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss");
        LocalTime checkIn = LocalTime.parse(checkInTime, formatter);
        LocalTime checkOut = LocalTime.parse(checkOutTime, formatter);

        // 근무시간 계산
        Duration duration = Duration.between(checkIn, checkOut);
        long hours = duration.toHours();
        long minutes = duration.toMinutes() % 60;

        // 근무시간을 "hh시간 mm분" 형식으로 반환
        return String.format("%d시간 %d분", hours, minutes);
    }
	
	// 출근 시간 저장을 처리하는 메서드
	@RequestMapping(value = {"/attendance/start"}, method = RequestMethod.POST)
    public ResponseEntity<String> startWork(@RequestBody Map<String, String> request) {
        // 출근 시간 데이터를 가져옵니다.
        String startTime = request.get("startTime");
        System.out.println("출근 시간: " + startTime);

        // 출근 시간을 저장하는 로직을 구현합니다.
        // 예: MyBatis Mapper를 호출하여 DB에 저장합니다.

        // 성공적으로 저장된 경우 200 OK 응답을 반환합니다.
        return ResponseEntity.ok("출근 시간이 저장되었습니다.");
    }
	/*
	@RequestMapping("/getAttendanceData.do")
	    @ResponseBody
	    public Map<String, Object> getAttendanceData(@RequestParam int year, @RequestParam int month) {
	        Map<String, Object> result = new HashMap<>();
	        List<AttendanceDTO> alist = attendMapper.getAttendanceByMonth(year, month);
	        result.put("alist", alist);
	        return result;
	    }
	    
	@RequestMapping("/getOffData.do")
	    @ResponseBody
	    public Map<String, Object> getOffData(@RequestParam int year) {
	        Map<String, Object> result = new HashMap<>();
	        OffDTO offnum = attendMapper.getOffNumByYear(year);
	        //List<OffDTO> offList = attendMapper.getOffListByYear(year);
	        result.put("offnum", offnum);
	        //result.put("offList", offList);
	        return result;
	    }*/
	
	
	
}