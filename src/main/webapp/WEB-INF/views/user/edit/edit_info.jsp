<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
	<!-- s: content -->
    <section id="sec_editinfo" class="content">
        <div class="left_box">
            <ul class="cont_list">
                <li><a class="s_active tab_btn" href="javascript:;" data-tab="edit_myinfo">개인정보 수정</a></li>
            </ul>
        </div>

        <div class="right_box">
            <div class="title_box">
                <p>개인정보 수정</p>
            </div>

            <form name="f" action="" method="">
                <div class="info_box">
                    <div class="my_profile">
                        <div class="img_box">
                            <!-- <img src="" alt="" /> -->
                        </div>
                        <label>
                            <input type="file" name="" value="" />
                        </label>
                    </div>
                    <div class="my_info">
                        <label>이름
                            <input type="text" name="" value="" readonly>
                        </label>
                        <label>핸드폰 번호
                            <input type="text" name="" value="">
                        </label>
                        <!-- 변경 불가 기본 정보 -->
                        <div class="no_change">
                            <label>내선번호
                                <input type="text" name="" value="" readonly>
                            </label>
                            <label>본부
                                <input type="text" name="" value="" readonly>
                            </label>
                            <label>소속
                                <input type="text" name="" value="" readonly>
                            </label>
                            <label>직위
                                <input type="text" name="" value="" readonly>
                            </label>
                            <label>직책
                                <input type="text" name="" value="" readonly>
                            </label>
                        </div>
                        <div class="pw_changebox">
                            <label>새 비밀번호 입력
                                <input type="password" name="" value="" readonly>
                            </label>
                            <label>새 비밀번호 확인
                                <input type="password" name="" value="" readonly>
                            </label>

                            <ul class="pw_warningbox">
                                <li>* 비밀번호는 8~15자리 영어,숫자,특수기호를 포함해서 작성해주세요.</li>
                                <li><span></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="pbtn_box">
                    <button class="setting_btn" type="submit">변경하기</button>
                </div>
            </form>
        </div>
    </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>