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
            <!-- tab3 - 안읽음 -->
            <div class="content_box" id="mailbox_notread">
                <div class="title_box">
                    <p>안읽은 메일 <em><span class="not_read">0</span>/<span>0</span></em></p>
                </div>
                <ul>
                    <li class="mail_toolbox">
                        <div class="mail_check">
                            <label>
                                <input type="checkbox" name="" value="">
                            </label>
                        </div>
                        <ul class="select_box">
                            <li><a href="javascript:;">읽음</a></li>
                            <li><a href="javascript:;">안읽음</a></li>
                            <li><a href="javascript:;">삭제</a></li>
                            
                            <li><a href="javascript:;">답장</a></li>
                            <li><a href="javascript:;">전달</a></li>
                            <li>
                                <select name="">
                                    <option value="">최신 순</option>
                                    <option value="">오래된 순</option>
                                </select>
                            </li>
    
                        </ul>
                    </li>
                    <li class="mail_box">
                        <div class="mail_list_wrap">
                            <ul class="mail_list">
                                <li class="mail_item">
                                    <a href="javascript:;">
                                        <div class="mail">
                                            <div class="mail_check">
                                                <label>
                                                    <input type="checkbox" name="" value="">
                                                </label>
                                            </div>
                                            <div class="mail_bookmark img_box">
                                                <a href="javascript:;"><img src="resources/images/mail/star.png" alt="" /></a>
                                            </div>
                                            <div class="mail_sender">
                                                <div class="img_box">
                                                    <a href="javascript:;"><img src="resources/images/mail/message.png" alt="" /></a>
                                                </div>
                                                <button type="button">발신인</button>
                                            </div>
                                            <div class="mail_title" style="width: 72%;">
                                                <p><a href="javascript:;">메일제목</a></p>
                                            </div>
                                            <div class="mail_date">
                                                <p>07/20 00:00</p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
                <!-- 페이징 -->
                <div class="pagination">
                </div>
            </div>
        </div>
    </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>