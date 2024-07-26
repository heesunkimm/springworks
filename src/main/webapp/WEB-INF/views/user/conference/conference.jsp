<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
	<!-- s: content -->
    <section id="sec_conference" class="content">
        <div class="left_box">
            <ul class="cont_list">
                <li><a class="tab_btn" href="javascript:;" data-tab="reserve_room">회의실 예약</a></li>
                <li><a class="tab_btn" href="javascript:;" data-tab="reserve_details">예약 내역</a></li>
            </ul>
        </div>

        <div class="right_box">
            <!-- 회의실 예약 -->
            <div class="s_active tab-content" id="reserve_room">
                <div class="title_box">
                    <p>회의실 예약</p>
                </div>

                <div class="calbox">
                    <div id="datepickers3" class="springCalendal datepicker-inline"></div>
                </div>

                <div class="conference_list">
                    <div class="btn_box">
                        <a class="popup_btn" href="javascript:;" data-popup="conf_reserve">회의실 예약</a>
                    </div>

                    <div class="date_box">
                        <p>선택 날짜 <span>(요일)</span></p>
                    </div>
                    <table class="s_table">
                        <thead>
                            <tr>
                                <th>회의실명</th>
                                <th>09:00</th>
                                <th>10:00</th>
                                <th>11:00</th>
                                <th>12:00</th>
                                <th>13:00</th>
                                <th>14:00</th>
                                <th>15:00</th>
                                <th>16:00</th>
                                <th>17:00</th>
                                <th>18:00</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="conference_room">
                                <td>회의실1</td>
                                <td>
                                    <div class="conf_reserve_box">
                                        <p class="reserv_tit">회의명</p>
                                        <p class="reserv_per">예약자명</p>
                                        <a class="popup_btn" href="javascript:;" data-popup="conf_reserve_edit">수정하기</a>
                                    </div>
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 페이징 -->
                    <div class="pagination">
                    </div>
                </div>
            </div>

            <!-- 예약내역 -->
            <div class="tab-content" id="reserve_details">
                <div class="title_box">
                    <p>예약내역</p>
                </div>
                <table class="reserve_list s_table">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>회의실명</th>
                            <th>예약자명</th>
                            <th>예약일자</th>
                            <th>예약시간</th>
                            <th>
                                <select name="">
                                    <option value="">전체보기</option>
                                    <option value="">예약완료</option>
                                    <option value="">이용중</option>
                                    <option value="">이용완료</option>
                                </select>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>1회의실</td>
                            <td>예약자이름</td>
                            <td>2024-07-20</td>
                            <td>14:00 - 15: 00</td>
                            <td>이용전</td>
                        </tr>
                    </tbody>
                </table>
                <!-- 페이징 -->
                <div class="pagination">
                </div>  
            </div>
        </div>
        
        <!-- 회의실 예약 팝업 -->
        <div class="popup_box confReserveBox" id="conf_reserve" style="display: none;">
            <p class="popup_title">회의실 예약</p>
            <a class="close_btn" href="javascript:;" data-popup="conf_reserve"><img src="resources/images/main/close.png" alt=""></a>
            <form name="f" action="" method="">
                <div class="input_box">
                    <div class="select_date">
                        <div class="springCalendal mini_cal datepicker-inline"></div>
                        <ul class="date_noti">
                            <li>* 날짜를 클릭하면 해당 날짜가 선택됩니다.</li>
                        </ul>
                    </div>
                    <div class="select_time">
                        <span>시간선택</span>
                        <div style="display: inline-block;">
                            <select name="">
                                <option value="">9:00</option>
                                <option value="">10:00</option>
                                <option value="">11:00</option>
                                <option value="">12:00</option>
                                <option value="">13:00</option>
                                <option value="">14:00</option>
                                <option value="">15:00</option>
                                <option value="">16:00</option>
                                <option value="">17:00</option>
                            </select>
                            <span>-</span>
                            <select name="">
                                <option value="">10:00</option>
                                <option value="">11:00</option>
                                <option value="">12:00</option>
                                <option value="">13:00</option>
                                <option value="">14:00</option>
                                <option value="">15:00</option>
                                <option value="">16:00</option>
                                <option value="">17:00</option>
                                <option value="">18:00</option>
                            </select>
                        </div>
                    </div>
                    <label>회의제목
                        <input type="text" name="" value="">
                    </label>
                    <label>예약자명
                        <input type="text" name="" value="" readonly>
                    </label>
                </div>
                <div class="pbtn_box">
                    <button type="submit">예약하기</button>
                </div>
            </form>
        </div>

        <!-- 회의내역 수정 팝업 -->
        <div class="popup_box confReserveEditBox" id="conf_reserve_edit" style="display: none;">
            <p class="popup_title">예약 수정</p>
            <a class="close_btn" href="javascript:;" data-popup="conf_reserve_edit"><img src="resources/images/main/close.png" alt=""></a>
            <form name="f" action="" method="">
                <div class="input_box">
                    <label>예약날짜
                        <input type="text" name="" value="" readonly>
                    </label>
                    <div class="select_time">
                        <span>변경시간</span>
                        <div style="display: inline-block;">
                            <select name="">
                                <option value="">9:00</option>
                                <option value="">10:00</option>
                                <option value="">11:00</option>
                                <option value="">12:00</option>
                                <option value="">13:00</option>
                                <option value="">14:00</option>
                                <option value="">15:00</option>
                                <option value="">16:00</option>
                                <option value="">17:00</option>
                            </select>
                            <span>-</span>
                            <select name="">
                                <option value="">10:00</option>
                                <option value="">11:00</option>
                                <option value="">12:00</option>
                                <option value="">13:00</option>
                                <option value="">14:00</option>
                                <option value="">15:00</option>
                                <option value="">16:00</option>
                                <option value="">17:00</option>
                                <option value="">18:00</option>
                            </select>
                        </div>
                    </div>
                    <label>회의제목
                        <input type="text" name="" value="">
                    </label>
                    <label>예약자명
                        <input type="text" name="" value="" readonly>
                    </label>
                </div>
                <div class="pbtn_box">
                    <button type="submit">수정하기</button>
                    <button type="button">예약삭제</button>
                </div>
            </form>
        </div>
        <div class="dimm"></div>
    </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>