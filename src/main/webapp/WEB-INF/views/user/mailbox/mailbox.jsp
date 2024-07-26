<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
	<!-- s: content -->
    <section id="sec_mailbox" class="content">
        <div class="left_box">
            <ul class="btn_box">
                <li class="write_mail"><a class="tab_btn" href="javascript:;" data-tab="mailbox_write">메일 쓰기</a></li>
                <li class="write_to_me"><a class="tab_btn" href="javascript:;" data-tab="mailbox_tome">내게 쓰기</a></li>
            </ul>

            <ul class="mail_summary">
                <li class="tab_btn summary_item mail_not_read" data-tab="mailbox_notread">
                    <a href="javascript:;">
                        <span class="count">0</span>
                        <span>안읽음</span>
                    </a>
                </li>
                <!-- 저장된 메일 -->
                <li class="tab_btn summary_item mail_read" data-tab="mailbox_save">
                    <a href="javascript:;">
                        <div class="star_icon img_box">
                            <img src="resources/images/mail/star.svg" alt=""/>
                        </div>
                        <span>저장</span>
                    </a>
                </li>
                <!-- 수신인에 내가 포함된 메일 -->
                <li class="tab_btn summary_item mail_include_me" data-tab="mailbox_includeme">
                    <a href="javascript:;">
                        <div class="tome_icon img_box">
                            <img src="resources/images/mail/tome.svg" alt=""/>
                        </div>
                        <span>TO</span>
                    </a>
                </li>
            </ul>

            <ul class="mail_category">
                <li class="tab_btn category_item mail_all" data-tab="mailbox_all">
                    <a href="javascript:;">
                        <div class="img_box">
                            <img src="resources/images/mail/mail.svg" alt=""/>
                        </div>
                        <span>전체메일</span>
                    </a>
                </li>
                <li class="s_active tab_btn category_item mail_receive" data-tab="mailbox_receive">
                    <a href="javascript:;">
                        <div class="img_box">
                            <img src="resources/images/mail/receive.svg" alt=""/>
                        </div>
                        <span>받은 메일함</span>
                    </a>
                </li>
                <li class="tab_btn category_item mail_send" data-tab="mailbox_send">
                    <a href="javascript:;">
                        <div class="img_box">
                            <img src="resources/images/mail/send.svg" alt=""/>
                        </div>
                        <span>보낸 메일함</span>
                    </a>
                </li>
                <li class="tab_btn category_item mail_storage" data-tab="mailbox_savebox">
                    <a href="javascript:;">
                        <div class="img_box">
                            <img src="resources/images/mail/save.svg" alt=""/>
                        </div>
                        <span>메일 보관함</span>
                    </a>
                </li>
                <li class="tab_btn category_item mail_tome" data-tab="mailbox_tomebox">
                    <a href="javascript:;">
                        <div class="img_box">
                            <img src="resources/images/mail/tome.svg" alt=""/>
                        </div>
                        <span>내게쓴 메일함</span>
                    </a>
                </li>
                <li class="tab_btn category_item mail_trash" data-tab="mailbox_trash">
                    <a href="javascript:;">
                        <div class="img_box">
                            <img src="resources/images/mail/trash.svg" alt=""/>
                        </div>
                        <span>휴지통</span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="right_box">
            <!-- tab1 - 메일쓰기 -->
            <div class="tab-content" id="mailbox_write">
                <div class="title_box">
                    <p>메일쓰기</p>
                </div>
                <div class="mail_toolbar">
                    <button type="button">보내기</button>
                    <button type="button">내게쓰기</button>
                </div>
                <div class="mail_write">
                    <div class="mail_write_option">
                        <div class="mail_recipient">
                            <label class="mail_label">받는사람
                                <input type="text" name="" value="">
                            </label>
                            <button class="addr_btn" type="button">주소록</button>
                        </div>
                        <div class="mail_refer">
                            <label class="mail_label">참조
                                <input type="text" name="" value="">
                            </label>
                        </div>
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

            <!-- tab2 - 내게쓰기 -->
            <div class="tab-content" id="mailbox_tome">
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

            <!-- tab3 - 안읽음 -->
            <div class="tab-content" id="mailbox_notread">
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
            
            <!-- tab4 - 저장 -->
            <div class="tab-content" id="mailbox_save">
                <div class="title_box">
                    <p>저장된 메일 <em><span class="not_read">0</span>/<span>0</span></em></p>
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
            
            <!-- tab5 - TO -->
            <div class="tab-content" id="mailbox_includeme">
                <div class="title_box">
                    <p>내게쓴 메일 <em><span class="not_read">0</span>/<span>0</span></em></p>
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
            
            <!-- tab6 - 전체메일 -->
            <div class="tab-content" id="mailbox_all">
                <div class="title_box">
                    <p>전체 메일 <em><span class="not_read">0</span>/<span>0</span></em></p>
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
            
            <!-- tab7 - 받은메일함 -->
            <div class="s_active tab-content" id="mailbox_receive">
                <div class="title_box">
                    <p>받은 메일함</p>
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

            <!-- tab8 - 보낸메일함 -->
            <div class="tab-content" id="mailbox_send">
                <div class="title_box">
                    <p>보낸 메일함 <em><span class="not_read">0</span>/<span>0</span></em></p>
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

            <!-- tab9 - 메일보관함 -->
            <div class="tab-content" id="mailbox_savebox">
                <div class="title_box">
                    <p>저장된 메일 <em><span class="not_read">0</span>/<span>0</span></em></p>
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

            <!-- tab10 - 내게쓴메일함 -->
            <div class="tab-content" id="mailbox_tomebox">
                <div class="title_box">
                    <p>내게쓴 메일 <em><span class="not_read">0</span>/<span>0</span></em></p>
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

            <!-- tab11 - 휴지통 -->
            <div class="tab-content" id="mailbox_trash">
                <div class="title_box">
                    <p>휴지통 <em><span class="not_read">0</span>/<span>0</span></em></p>
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