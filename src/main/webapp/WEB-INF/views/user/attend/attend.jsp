<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../index_top.jsp" %>
	<!-- s: content -->
    <section id="sec_attend" class="content">
        <div class="left_box">
            <ul class="cont_list">
                <li><a class="s_active tab_btn" href="javascript:;" data-tab="attend_list">근태 내역</a></li>
                <li><a class="tab_btn" href="javascript:;" data-tab="off_list">연차 내역</a></li>
            </ul>
        </div>

        <div class="right_box">
            <!-- 근태 내역 -->
            <div class="s_active tab-content" id="attend_list">
                <div class="title_box">
                    <p>근태 내역</p>
                </div>
                <div class="attend_box">
                    <label>
                        <input class="attend_year" type="text" name="" value="2024" readonly /> <!-- 현재 날짜 반영해서 페이지에 표시 -->
                    </label>
                    <div class="select_month">
                        <div class="decrease_btn img_box" onclick="changeMonth(-1)">
                            <img src="resources/images/main/arrow.png" alt="" />
                        </div>
                        <label>
                            <input class="attend_month" type="text" name="" value="12" readonly />
                        </label>
                        <div class="increase_btn img_box" style="transform: rotate(180deg);" onclick="changeMonth(1)">
                            <img src="resources/images/main/arrow.png" alt="" />
                        </div>
                    </div>
                </div>
    
                <ul class="month_box month_listbox">
                    <li class="day_toolbar">
                        <ul>
                            <li>날짜</li>
                            <li>요일</li>
                            <li>출근시간</li>
                            <li>퇴근시간</li>
                            <li>근무시간</li>
                            <li>비고</li>
                        </ul>
                    </li>
                    <c:forEach items="${alist}" var="list">
                    <li class="day_box">
                       <ul>
                            <li><fmt:formatDate value="${list.attend_date}" pattern="MM/dd" /></li>
                            <li>${list.attend_weekday}</li>
                            <li>${list.attend_check_in_time}</li>
                            <li>${list.attend_check_out_time}</li>
                            <li>${list.workingHours}</li>
                            <li></li>
                        </ul>
                    </li>
                    </c:forEach>
                </ul>
            </div>

            <!-- 연차 내역 -->
            <div class="tab-content" id="off_list">
                <div class="title_box">
                    <p>연차 내역</p>
                </div>

                <div class="select_year">
                    <div class="decrease_btn img_box" onclick="changeYear(-1)">
                        <img src="resources/images/main/arrow.png" alt="" />
                    </div>
                    <label>
                        <input class="attend_year" type="text" name="" value="2024" readonly />
                    </label>
                    <div class="increase_btn img_box" style="transform: rotate(180deg);" onclick="changeYear(1)">
                        <img src="resources/images/main/arrow.png" alt="" />
                    </div>
                </div>
    
                <ul class="month_box off_listbox">
                    <li class="off_box">
                        <dl>
                            <dt>총연차</dt>
                            <dd>${offnum.offAll}</dd>
                        </dl>
                        <dl>
                            <dt>사용연차</dt>
                            <dd>${offnum.offUse}</dd>
                        </dl>
                        <dl>
                            <dt>잔여연차</dt>
                            <dd>${offnum.offPassi}</dd>
                        </dl>
                    </li>
                    <li class="day_toolbar">
                        <ul>
                            <li>No</li>
                            <li>기간</li>
                            <li>요일</li>
                            <li>소진연차</li>
                            <li>비고</li>
                        </ul>
                    </li>
                    <li class="day_box">
                        <ul>
                            <li>1</li>
                            <li>7/1</li>
                            <li>월</li>
                            <li>0.5</li>
                            <li>오후반차</li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>
<script>
	// 근태내역화살표 조절
	function changeMonth(direction) {
	    const yearInput = document.querySelector('.attend_year');
	    const monthInput = document.querySelector('.attend_month');
	
	    let year = parseInt(yearInput.value, 10);
	    let month = parseInt(monthInput.value, 10);
	
	    month += direction;
	
	    if (month < 1) {
	        month = 12;
	        year--;
	    } else if (month > 12) {
	        month = 1;
	        year++;
	    }
	    
	 
	
	    yearInput.value = year;
	    monthInput.value = month;
	
	    renderAttendanceData(year, month);
	}
	
	// 연차내역화살표 조절 - 기능 안됨,,
	/*function changeYear(direction) {
	    const yearInput = document.querySelector('.attend_year');
	
	    let year = parseInt(yearInput.value, 10);
	    
	    const today = new Date(); // 현재 날짜
        const currentYear = today.getFullYear(); // 현재 연도
	
	    year += direction;
	
	    yearInput.value = year;
	
	    renderOffData(year);
	}*/
	
	document.addEventListener('DOMContentLoaded', () => {
        const today = new Date();  
        const year = today.getFullYear();  
        const month = today.getMonth() + 1;  

        // 연도와 월 입력 필드에 현재 연도와 월 설정
        document.querySelector('.attend_year').value = year;
        document.querySelector('.attend_month').value = month;

        // 초기 연도와 월을 사용하여 데이터를 렌더링합니다.
        renderAttendanceData(year, month);
        
        renderOffData(year);
    });
	
	/*
	function renderAttendanceData(year, month) {
	    // AJAX 요청을 통해 선택된 연도와 월의 데이터를 가져옴
	    $.ajax({
	        url: 'getAttendanceData.do',
	        type: 'GET',
	        data: {
	            year: year,
	            month: month
	        },
	        success: function(response) {
	            // 받아온 데이터를 이용하여 화면에 렌더링
	            const attendList = document.querySelector('.month_listbox');
	            attendList.innerHTML = ''; // 기존 내용을 지움

	            response.alist.forEach(function(list) {
	                const dayBox = document.createElement('li');
	                dayBox.className = 'day_box';
	                dayBox.innerHTML = `
	                    <ul>
	                        <li>`+list.attend_date +`</li>
	                        <li>`+ list.attend_weekday+`</li>
	                        <li>`+list.attend_check_in_time+`</li>
	                        <li>`+list.attend_check_out_time+`</li>
	                        <li>`+list.workingHours`</li>
	                        <li></li>
	                    </ul>`;
	                attendList.appendChild(dayBox);s
	            });
	        },
	        error: function(error) {
	            console.error('Error fetching attendance data:', error);
	        }
	    });
	}*/
	
	/*
	function renderOffData(year) {
	    // AJAX 요청을 통해 선택된 연도의 연차 데이터를 가져옴
	    $.ajax({
	        url: 'getOffData.do',
	        type: 'GET',
	        data: {
	            year: year
	        },
	        success: function(response) {
	            // 받아온 데이터를 이용하여 화면에 렌더링
	            const offListbox = document.querySelector('.off_listbox');
	            offListbox.innerHTML = ''; // 기존 내용을 지움

	            // 연차 정보 갱신
	            document.querySelector('.off_box dd:nth-child(2)').textContent = response.offnum.offAll;
	            document.querySelector('.off_box dd:nth-child(4)').textContent = response.offnum.offUse;
	            document.querySelector('.off_box dd:nth-child(6)').textContent = response.offnum.offPassi;

	            // 연차 내역 갱신
	            response.offList.forEach(function(off) {
	                const dayBox = document.createElement('li');
	                dayBox.className = 'day_box';
	                dayBox.innerHTML = `
	                    <ul>
	                        <li>${off.no}</li>
	                        <li>${off.period}</li>
	                        <li>${off.weekday}</li>
	                        <li>${off.usedOff}</li>
	                        <li>${off.remarks}</li>
	                    </ul>`;
	                offListbox.appendChild(dayBox);
	            });
	        },
	        error: function(error) {
	            console.error('Error fetching off data:', error);
	        }
	    });
	}*/

</script>