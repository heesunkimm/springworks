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
            <!-- 공지사항 -->
            <div class="content_box" id="notice_manage">
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