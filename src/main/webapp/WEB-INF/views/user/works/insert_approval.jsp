<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
	<!-- s: content -->
    <section id="sec_insertappr" class="content_wrap">
        <div class="title_box">
            <p>결재 등록</p>
        </div>

        <form name="" action="" method="post">
            <div class="input_box">
                <div class="docs_sign">
                <dl>
                    <dt>작성</dt>
                    <dd></dd>
                </dl>
                <dl>
                    <dt>팀장</dt>
                    <dd></dd>
                </dl>
                <dl>
                    <dt>본부장</dt>
                    <dd></dd>
                </dl>
                </div>

                <div class="docs_info">
                    <div>
                        <dl>
                            <dt>문서번호</dt>
                            <dd></dd>
                        </dl>
                        <dl>
                            <dt>기안일</dt>
                            <dd></dd>
                        </dl>
                    </div>
                    <!-- <dl>
                        <dt>수신인 선택</dt>
                        <dd>
                            <span>수신자</span>
                            <button type="button">주소록</button>
                        </dd>
                    </dl> -->
                </div>

                <div class="docs_details">
                    <div class="docs_title">
                        <label>
                            <input type="text" name="" value="" placeholder="결재문서명 입력">
                        </label>
                    </div>
                    <dl class="docs_name">
                        <dt>
                            <label>
                                <input type="text" name="" value="" placeholder="제목입력">
                            </label>
                        </dt>
                        <dd></dd>
                    </dl>
                    <dl class="docs_date">
                        <dt>
                            <label>
                                <input type="text" name="" value="" placeholder="일자명입력">
                            </label>
                        </dt>
                        <dd></dd>
                    </dl>
                    <dl class="docs_cont">
                        <dt>
                            <label>
                                <input type="text" name="" value="" placeholder="내용명입력">
                            </label>
                        </dt>
                        <dd></dd>
                    </dl>
                </div>
            </div>

            <div class="btn_box">
                <button type="submit">등록하기</button>
                <button type="button">등록취소</button>
            </div>
        </form>
    </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>