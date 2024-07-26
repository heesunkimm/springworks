<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
	<!-- s : content -->
     <section id="sec_works" class="content">
        <div class="left_box">
            <ul class="cont_list">
                <li><a class="tab_btn s_active" href="javascript:;" data-tab="id_manage">계정관리</a></li>
                <li><a class="tab_btn" href="javascript:;"data-tab="approval_manage">결재관리</a></li>
                <li><a class="tab_btn" href="javascript:;"data-tab="attend_manage">근태관리</a></li>
                <li><a class="tab_btn" href="javascript:;"data-tab="schedule_manage">일정관리</a></li>
                <li><a class="tab_btn" href="javascript:;"data-tab="notice_manage">공지사항</a></li>
            </ul>
        </div>

        <div class="right_box">
            <!-- 계정관리 -->
            <div class="s_active tab-content" id="id_manage">
                <div class="title_box">
                    <p>계정관리</p>
                </div>
                <div class="btn_box">
                    <a class="popup_btn" href="javascript:;" data-popup="create_id">계정생성</a>
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
                        <!-- <div class="select_date">
                            <span>등록일</span>
                            <input type="text" class="select_cal datepicker" name="" id="datepicker5" placeholder="날짜선택" readonly/>
                        </div> -->
                        <label>재직여부
                            <input type="checkbox" name="" value="">
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
                                <th>등록일</th>
                                <th>퇴직일</th>
                                <th>재직여부</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>0</td>
                                <td>본부/팀</td>
                                <td>직위/직책</td>
                                <td>사번</td>
                                <td><a href="javascript:;">이름</a></td>
                                <td>2022-07-20</td>
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
            <!-- 계정생성 팝업 -->
            <div class="popup_box" id="create_id" style="display: none;">
                <p class="popup_title">계정생성</p>
                <a class="close_btn" href="javascript:;" data-popup="create_id"><img src="resources/images/main/close.png" alt=""></a>
                <form name="f" action="" method="">
                    <div class="input_box">
                        <label>본부/팀
                            <select name="">
                                <optgroup label="본부">
                                    <option value="">팀1</option>
                                    <option value="">팀2</option>
                                </optgroup>
                            </select>
                        </label>
                        <label>직위/직책
                            <select name="">
                                <optgroup label="11">
                                    <option value="">1-1</option>
                                    <option value="">1-2</option>
                                </optgroup>
                            </select>
                        </label>
                        <label>이름
                            <input type="text" name="" value="">
                        </label>
                        <!-- <label>사번
                            <input type="text" name="" value="" readonly>
                        </label> -->
                        <div class="email_box">
                            <label>
                                <input type="text" name="" value="">
                            </label>
                            <span>@</span>
                            <select name="">
                                <option value="">naver.com</option>
                                <option value="">gmail.com</option>
                                <option value="">nate.com</option>
                            </select>
                        </div>
                    </div>
                    <p>* 초기 패스워드는 사번</p>
                    <div class="pbtn_box">
                        <button type="submit">계정생성</button>
                    </div>
                </form>
            </div>
            <div class="popup_box" style="display: none;">
                <p class="popup_title">계정수정</p>
                <a class="close_btn" href="javascript:;"><img src="resources/images/main/close.png" alt=""></a>
                <form name="f" action="" method="">
                    <div class="input_box">
                        <label>본부/팀
                            <select name="">
                                <optgroup label="본부">
                                    <option value="">팀1</option>
                                    <option value="">팀2</option>
                                </optgroup>
                            </select>
                        </label>
                        <label>직위/직책
                            <select name="">
                                <optgroup label="11">
                                    <option value="">1-1</option>
                                    <option value="">1-2</option>
                                </optgroup>
                            </select>
                        </label>
                        <label>이름
                            <input type="text" name="" value="">
                        </label>
                        <label>사번
                            <input type="text" name="" value="" readonly>
                        </label>
                        <div class="email_box">
                            <label>
                                <input type="text" name="" value="">
                            </label>
                            <span>@</span>
                            <select name="">
                                <option value="">naver.com</option>
                                <option value="">gmail.com</option>
                                <option value="">nate.com</option>
                            </select>
                        </div>
                        <label>재직여부
                            <select>
                                <option value="">재직중</option>
                                <option value="">퇴사완료</option>
                            </select>
                        </label>
                    </div>
                    <p>* 비밀번호 초기화시 패스워드는 사번q!</p>
                    <div class="pbtn_box">
                        <button type="submit">계정수정</button>
                        <button type="button">비밀번호 초기화</button>
                    </div>
                </form>
            </div>
            <div class="dimm"></div>

            <!-- 결재관리 -->
            <div class="tab-content" id="approval_manage">
                <div class="title_box">
                    <p>결재관리</p>
                </div>
                <div class="btn_box">
                    <a href="javascript:;">결재등록</a>
                </div>

                <div class="search_box">
                    <form name="" action="" method="post">
                        <label>기안 본부/팀
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
                        <label>사번
                            <input type="text" name="" value="">
                        </label>
                        <label>기안자
                            <input type="text" name="" value="">
                        </label>
                        <label>수신자
                            <input type="text" name="" value="">
                        </label>
                        <label>문서구분
                            <select name="">
                                <option value="">문서1</option>
                                <option value="">문서2</option>
                            </select>
                        </label>
                        <label>제목
                            <input type="text" name="" value="">
                        </label>
                        <div class="select_date">
                            <span>기안일</span>
                            <input type="text" class="select_cal datepicker" name="" id="datepicker6" placeholder="날짜선택" readonly/>
                        </div>
                        <label>결재상태
                            <select name="">
                                <option value="">결재대기</option>
                                <option value="">결재완료</option>
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
                                <th>기안본부/팀</th>
                                <th>사번</th>
                                <th>기안자</th>
                                <th>수신자</th>
                                <th>문서구분</th>
                                <th>제목</th>
                                <th>기안일</th>
                                <th>결재상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>0</td>
                                <td>기안본부/팀</td>
                                <td>사번</td>
                                <td>기안자</td>
                                <td>수신자</td>
                                <td>문서구분</td>
                                <td><a href="javascript:;">제목</a></td>
                                <td>2024-07-20</td>
                                <td>결재상태</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 페이징 -->
                    <div class="pagination">
                    </div>
                </div>
            </div>

            <!-- 근태관리 -->
            <div class="tab-content" id="attend_manage">
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

            <!-- 일정관리 -->
            <div class="tab-content" id="schedule_manage">
                <div class="title_box">
                    <p>일정관리</p>
                </div>

                <div class="calbox">
                    <div id="datepickers4" class="springCalendal datepicker-inline"></div>
                </div>

                <div class="btn_box">
                    <a class="schedule_insert" href="javascript:;">일정등록</a>
                </div>

                <div class="toggle_box">
                    <a class="toggle_btn" href="javascript:;">일정검색</a>
                </div>

                <div class="toggle-content" style="display: none;">
                    <div class="search_box">
                        <form name="" action="" method="post">
                            <div class="select_date">
                                <span>등록일</span>
                                <input type="text" class="select_cal datepicker" name="" id="datepicker9" placeholder="날짜선택" readonly/>
                            </div>
                            <label>
                                <select name="">
                                    <option value="">제목</option>
                                    <option value="">내용</option>
                                </select>
                            </label>
                            <label>
                                <input type="text" name="" value="">
                            </label>
                            <button class="search_btn" type="submit">검색</button>
                        </form>
                    </div>
    
                    <div class="works_list">
                        <table class="s_table">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>등록일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>0</td>
                                    <td>제목</td>
                                    <td>작성자</td>
                                    <td>2024-07-20</td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- 페이징 -->
                        <div class="pagination">
                        </div>
                    </div>
                </div>
            </div>

            <!-- 공지사항 -->
            <div class="tab-content" id="notice_manage">
                <div class="title_box">
                    <p>공지사항</p>
                </div>

                <div class="btn_box">
                    <a href="./insert_notice.html">공지등록</a>
                </div>

                <div class="search_box">
                    <form name="" action="" method="post">
                        <div class="select_date">
                            <span>등록일</span>
                            <input type="text" class="select_cal datepicker" name="" id="datepicker9" placeholder="날짜선택" readonly/>
                        </div>
                        <label>
                            <select name="">
                                <option value="">제목</option>
                                <option value="">내용</option>
                            </select>
                        </label>
                        <label>
                            <input type="text" name="" value="">
                        </label>
                        <button class="search_btn" type="submit">검색</button>
                    </form>
                </div>

                <div class="works_list">
                    <table class="s_table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>등록일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>0</td>
                                <td><a href="javascript:;">제목</a></td>
                                <td>작성자</td>
                                <td>2024-07-20</td>
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