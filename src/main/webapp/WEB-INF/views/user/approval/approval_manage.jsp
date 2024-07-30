<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
	<!-- s : content -->
    <section id="sec_approval" class="content">
        <div class="left_box">
            <ul class="approval_list cont_list">
                <li><a href="approval_register.do">결재 등록</a></li>
                <li><a href="approval_details.do">결재 상신내역</a></li>
                <li><a href="approval_progress.do">결재 처리내역</a></li>
                <li><a href="approval_all.do">결재 전체조회</a></li>
                <li><a href="approval_receive.do">결재 수신내역</a></li>
            </ul>
        </div>

        <div class="right_box">
            <!-- 결재관리 -->
            <div class="content_box" id="approval_manage">
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
        </div>
     </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>