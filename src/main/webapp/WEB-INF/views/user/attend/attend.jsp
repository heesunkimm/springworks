<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <input class="attend_year" type="text" name="" value="2024" readonly />
                    </label>
                    <div class="select_month">
                        <div class="decrease_btn img_box">
                            <img src="resources/images/main/arrow.png" alt="" />
                        </div>
                        <label>
                            <input class="attend_month" type="text" name="" value="12" readonly />
                        </label>
                        <div class="increase_btn img_box" style="transform: rotate(180deg);">
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
                    <li class="day_box">
                        <ul>
                            <li>7/1</li>
                            <li>월</li>
                            <li>09:00:00</li>
                            <li>14:00:00</li>
                            <li>4h</li>
                            <li>오후반차</li>
                        </ul>
                    </li>
                </ul>
            </div>

            <!-- 연차 내역 -->
            <div class="tab-content" id="off_list">
                <div class="title_box">
                    <p>연차 내역</p>
                </div>

                <div class="select_year">
                    <div class="decrease_btn img_box">
                        <img src="resources/images/main/arrow.png" alt="" />
                    </div>
                    <label>
                        <input class="attend_year" type="text" name="" value="2024" readonly />
                    </label>
                    <div class="increase_btn img_box" style="transform: rotate(180deg);">
                        <img src="resources/images/main/arrow.png" alt="" />
                    </div>
                </div>
    
                <ul class="month_box off_listbox">
                    <li class="off_box">
                        <dl>
                            <dt>총연차</dt>
                            <dd>15</dd>
                        </dl>
                        <dl>
                            <dt>사용연차</dt>
                            <dd>7</dd>
                        </dl>
                        <dl>
                            <dt>잔여연차</dt>
                            <dd>8</dd>
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