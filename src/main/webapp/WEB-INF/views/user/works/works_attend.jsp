<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
	<!-- s : content -->
    <section id="sec_works" class="content">
        <div class="left_box">
            <ul class="cont_list">
                <li><a href="works_id.do">계정관리</a></li>
                <li><a href="works_approval.do">결재관리</a></li>
                <li><a href="works_attend.do">근태관리</a></li>
                <li><a href="works_schedule.do">일정관리</a></li>
                <li><a href="works_notice.do">공지사항</a></li>
            </ul>
        </div>

        <div class="right_box">
            <!-- 근태관리 -->
            <div class="content_box" id="attend_manage">
                <div class="title_box">
                    <p>근태관리</p>
                </div>
                <div class="search_box">
                    <form name="" action="" method="post">
                        <label>본부/팀
                            <select name="">
                                <optgroup label="본부1">
                                    <option value="">팀1</option>
                                    <option value="">팀2</option>
                                    <option value="">팀3</option>
                                </optgroup>
                                <optgroup label="본부2">
                                    <option value="">팀1</option>
                                    <option value="">팀2</option>
                                </optgroup>
                            </select>
                        </label>
                        <label>직위/직책
                            <select name="">
                                <optgroup label="11">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                </optgroup>
                                <optgroup label="22">
                                    <option value="">2-1</option>
                                    <option value="">2-2</option>
                                </optgroup>
                            </select>
                        </label>
                        <label>사번
                            <input type="text" name="" value="">
                        </label>
                        <label>이름
                            <input type="text" name="" value="">
                        </label>
                        <div class="select_date">
                            <span>기간</span>
                            <input type="text" class="select_cal datepicker" name="" id="datepicker7" placeholder="날짜선택" readonly/>
                        </div>
                        <label>근태
                            <select name="">
                                <option value="">-</option>
                                <option value="">연차</option>
                                <option value="">오전반차</option>
                                <option value="">오후반차</option>
                            </select>
                        </label>
                        <button class="search_btn" type="submit">검색</button>
                    </form>
                </div>

                <div class="works_list">
                    <table class="s_table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>본부/팀</th>
                                <th>직위/직책</th>
                                <th>사번</th>
                                <th>이름</th>
                                <th>일자</th>
                                <th>근태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>0</td>
                                <td>본부/팀</td>
                                <td>직위/직책</td>
                                <td>사번</td>
                                <td>이름</td>
                                <td>2024-07-20</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 페이징 -->
                    <div class="pagination">
                    </div>
                </div>
            </div>
        </div>
     </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>