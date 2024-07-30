<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
	<!-- s: content -->
    <section id="sec_mailbox" class="content">
        <div class="left_box">
            <ul class="btn_box">
                <li class="write_mail"><a href="mailbox_write.do">메일 쓰기</a></li>
                <li class="write_to_me"><a href="mailbox_tome.do">내게 쓰기</a></li>
            </ul>

            <ul class="mail_summary">
                <li class="tab_btn summary_item mail_not_read">
                    <a href="mailbox_notread.do">
                        <span class="count">0</span>
                        <span>안읽음</span>
                    </a>
                </li>
                <!-- 저장된 메일 -->
                <li class="tab_btn summary_item mail_read">
                    <a href="mailbox_save.do">
                        <div class="star_icon img_box">
                            <img src="resources/images/mail/star.svg" alt=""/>
                        </div>
                        <span>저장</span>
                    </a>
                </li>
                <!-- 수신인에 내가 포함된 메일 -->
                <li class="tab_btn summary_item mail_include_me">
                    <a href="mailbox_includeme.do">
                        <div class="tome_icon img_box">
                            <img src="resources/images/mail/tome.svg" alt=""/>
                        </div>
                        <span>TO</span>
                    </a>
                </li>
            </ul>

            <ul class="mail_category">
                <li class="tab_btn category_item mail_all">
                    <a href="mailbox_all.do">
                        <div class="img_box">
                            <img src="resources/images/mail/mail.svg" alt=""/>
                        </div>
                        <span>전체메일</span>
                    </a>
                </li>
                <li class="tab_btn category_item mail_receive">
                    <a href="mailbox_receive.do">
                        <div class="img_box">
                            <img src="resources/images/mail/receive.svg" alt=""/>
                        </div>
                        <span>받은 메일함</span>
                    </a>
                </li>
                <li class="tab_btn category_item mail_send" data-tab="mailbox_send">
                    <a href="mailbox_send.do">
                        <div class="img_box">
                            <img src="resources/images/mail/send.svg" alt=""/>
                        </div>
                        <span>보낸 메일함</span>
                    </a>
                </li>
                <li class="tab_btn category_item mail_storage" data-tab="mailbox_savebox">
                    <a href="mailbox_savebox.do">
                        <div class="img_box">
                            <img src="resources/images/mail/save.svg" alt=""/>
                        </div>
                        <span>메일 보관함</span>
                    </a>
                </li>
                <li class="tab_btn category_item mail_tome">
                    <a href="mailbox_mail_tome.do">
                        <div class="img_box">
                            <img src="resources/images/mail/tome.svg" alt=""/>
                        </div>
                        <span>내게쓴 메일함</span>
                    </a>
                </li>
                <li class="tab_btn category_item mail_trash">
                    <a href="mailbox_trash.do">
                        <div class="img_box">
                            <img src="resources/images/mail/trash.svg" alt=""/>
                        </div>
                        <span>휴지통</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="right_box">
            <!-- tab2 - 내게쓰기 -->
            <div class="content_box" id="mailbox_tome">
                <div class="title_box">
                    <p>내게쓰기</p>
                </div>
                <div class="mail_toolbar">
                    <button type="button">저장</button>
                    <button type="button">메일쓰기</button>
                </div>
                <div class="mail_write">
                    <div class="mail_write_option">
                        <div class="mail_title">
                            <label class="mail_label">제목
                                <input type="text" name="" value="">
                            </label>
                        </div>
                        <div class="include_file">
                            <span>파일첨부</span>
                            <label>
                                <input type="file" name="" value="">
                            </label>
                        </div>
                    </div>
                    <div class="mail_content">
                        <textarea cols="100"></textarea>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>