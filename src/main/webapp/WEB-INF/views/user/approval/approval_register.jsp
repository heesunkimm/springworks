<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
	<!-- s: content -->
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
            <!-- 결재 등록 -->
            <div class="content_box" id="approval_register">
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
        </div>
    </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>