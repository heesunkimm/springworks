<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
    <!-- s: content -->
    <section id="sec_approval" class="content">
        <div class="left_box">
            <ul class="approval_list cont_list">
                <li><a class="tab_btn" href="javascript:;" data-tab="approval_register">결재 등록</a></li>
                <li><a class="s_active tab_btn" href="javascript:;" data-tab="approval_details">결재 상신내역</a></li>
                <li><a class="tab_btn" href="javascript:;" data-tab="approval_progress">결재 처리내역</a></li>
                <li><a class="tab_btn" href="javascript:;" data-tab="approval_all">결재 전체조회</a></li>
            </ul>
        </div>
        <div class="right_box">
            <!-- 결재 등록 -->
            <div class="tab-content" id="approval_register">
                <div class="title_box">
                    <p>결재 등록하기</p>
                </div>
                <div class="approval_insert">
                    <label>결재문서 선택
                        <select class="dataopt">
                            <option class="opt_list" value="" data-opt="approval_doc1">문서양식1</option>
                        </select>
                    </label>
                    <div id="approval_doc1" class="s_active opt-content">
                        <form name="" action="" method="post">
                            <button class="search_btn" type="button">등록하기</button>
                        </form>
                    </div>
                </div>
            </div>

            <!-- 결재 상신내역 -->
            <div class="s_active tab-content" id="approval_details">
                <div class="title_box">
                    <p>결재 상신내역</p>
                </div>
                <div class="search_box">
                    <form name="" action="" method="post">
                        <div class="select_date">
                            <span>상신일</span>
                            <input type="text" class="select_cal datepicker" name="" id="datepicker2" placeholder="날짜선택" readonly/>
                        </div>
                        <label>문서구분
                            <select name="">
                                <option value="">문서1</option>
                                <option value="">문서2</option>
                            </select>
                        </label>
                        <label>제목
                            <input class="input_title" type="text" name="" value="">
                        </label>
                        <label>진행상태
                            <select name="">
                                <option value="">진행대기</option>
                                <option value="">최종완료</option>
                            </select>
                        </label>
                        <button class="search_btn" type="submit">검색</button>
                    </form>
                </div>
                <div class="approval_list">
                    <table class="s_table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>문서구분</th>
                                <th>제목</th>
                                <th>상신일</th>
                                <th>최종결재자</th>
                                <th>진행상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>0</td>
                                <td>문서구분</td>
                                <td><a href="javascript:;">문서제목 작성칸</a></td>
                                <td>2024-07-20</td>
                                <td>최종결재자</td>
                                <td>진행대기</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 페이징 -->
                    <div class="pagination">
                    </div>
                </div>
            </div>

            <!-- 결재 처리내역 -->
            <div class="tab-content" id="approval_progress">
                <div class="title_box">
                    <p>결재 처리내역</p>
                </div>
                <div class="search_box">
                    <form name="" action="" method="post">
                        <div class="select_date">
                            <span>결재일</span>
                            <input type="text" class="select_cal datepicker" name="" id="datepicker3" placeholder="날짜선택" readonly/>
                        </div>
                        <label>문서구분
                            <select name="">
                                <option value="">문서1</option>
                                <option value="">문서2</option>
                            </select>
                        </label>
                        <label>제목
                            <input class="input_title" type="text" name="" value="">
                        </label>
                        <label>진행상태
                            <select name="">
                                <option value="">결재대기</option>
                                <option value="">진행중</option>
                                <option value="">결재완료</option>
                                <option value="">최종완료</option>
                            </select>
                        </label>
                        <button class="search_btn" type="submit">검색</button>
                    </form>
                </div>
                <div class="approval_list">
                    <table class="s_table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>문서구분</th>
                                <th>제목</th>
                                <th>결재일</th>
                                <th>최종결재자</th>
                                <th>진행상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>0</td>
                                <td>문서구분</td>
                                <td><a href="javascript:;">문서제목 작성칸</a></td>
                                <td>2024-07-20</td>
                                <td>최종결재자</td>
                                <td>결재대기</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 페이징 -->
                    <div class="pagination">
                    </div>
                </div>
            </div>

            <!-- 결재 전체조회 -->
            <div class="tab-content" id="approval_all">
                <div class="title_box">
                    <p>결재 전체조회</p>
                </div>
                <div class="search_box">
                    <form name="" action="" method="post">
                        <div class="select_date">
                            <span>상신일</span>
                            <input type="text" class="select_cal datepicker" name="" id="datepicker4" placeholder="날짜선택" readonly/>
                        </div>
                        <label>문서구분
                            <select name="">
                                <option value="">문서1</option>
                                <option value="">문서2</option>
                            </select>
                        </label>
                        <label>제목
                            <input class="input_title" type="text" name="" value="">
                        </label>
                        <label>진행상태
                            <select name="">
                                <option value="">진행중</option>
                                <option value="">완료</option>
                            </select>
                        </label>
                        <label class="check_label">내 작성글
                            <input type="checkbox" name="" value="">
                        </label>
                        <button class="search_btn" type="submit">검색</button>
                    </form>
                </div>
                <div class="approval_list">
                    <table class="s_table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>문서구분</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>상신일</th>
                                <th>결재완료일</th>
                                <th>최종결재자</th>
                                <th>결재여부</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>0</td>
                                <td>문서구분</td>
                                <td><a href="javascript:;">문서제목 작성칸</a></td>
                                <td>작성자</td>
                                <td>2024-07-20</td>
                                <td>2024-07-20</td>
                                <td>최종결재자</td>
                                <td>결재대기</td>
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