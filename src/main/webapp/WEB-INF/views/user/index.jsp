<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="index_top.jsp" %>
	<!-- s: content -->
    <section id="sec_main" class="content">
        <div class="left_box">
            <div class="my_profile">
                <div class="img_box">
                    <img src="" alt="" />
                </div>
                <div class="txt_box">
                    <p><span class="my_name">이름 + 직급</span>/<span class="my_division">부서명</span></p>
                    <p class="my_tel">02-123-4567</p>
                    <a class="my_edit" href="javascript:;">로그아웃</a>
                </div>
            </div>

            <div class="attend_box">
                <div class="txt_box">
                    <p class="txt_tit">근태 관리</p>
                    <p class="txt_today">오늘 날짜</p>
                    <p class="txt_clock">현재 시간</p>
                </div>
                <div class="attend_check">
                    <div class="txt_box">
                        <p>출근시간 - <span class="check_time">00:00:00</span></p>
                        <p>퇴근시간 - <span class="check_time">00:00:00</span></p>
                    </div>
                    <div class="btn_box">
                        <button type="button">출근</button>
                    </div>
                </div>
            </div>

            <div class="mini_calbox">
                <div id="datepickers1" class="springCalendal mini_cal datepicker-inline"></div>
            </div>
        </div>

        <div class="right_box">
            <ul>
                <li class="mail_box">
                    <div class="mail_summary">
                        <div class="img_box">
                            <img src="../images/mail/mail_icon.png" alt="" />
                        </div>
                        <div class="txt_box">
                            <p>읽지않은 메일 <span>0</span>개</p>
                        </div>
                    </div>
                    <div class="mail_list_wrap">
                        <div class="tit_box">
                            <p>메일함</p>
                            <a href="javascript:;">더보기</a>
                        </div>
                        <ul class="mail_list">
                            <li class="mail_item">
                                <a href="javascript:;">
                                    <div class="mail">
                                        <div class="mail_check">
                                            <label>
                                                <input type="checkbox" name="" value="">
                                            </label>
                                        </div>
                                        <div class="mail_bookmark img_box">
                                            <a href="javascript:;"><img src="../images/mail/star.png" alt="" /></a>
                                        </div>
                                        <div class="mail_sender">
                                            <div class="img_box">
                                                <a href="javascript:;"><img src="../images/mail/message.png" alt="" /></a>
                                            </div>
                                            <button type="button">발신인</button>
                                        </div>
                                        <div class="mail_title" style="width: 63%;">
                                            <p><a href="javascript:;">메일제목</a></p>
                                        </div>
                                        <div class="mail_date">
                                            <p>07/20 00:00</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="noti_box">
                    <p class="box_tit">공지사항</p>
                    <table class="noti_list s_table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td><a href="javascript:;">공지사항 제목 작성칸입니다.</a></td>
                                <td>작성자</td>
                                <td>2024-07-20</td>
                                <td>222</td>
                            </tr>
                        </tbody>
                    </table>
                </li>
            </ul>
        </div>
    </section>
    <!-- e: content -->
<%@ include file="index_bottom.jsp" %>