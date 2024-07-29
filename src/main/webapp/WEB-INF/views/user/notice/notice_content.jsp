<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
	<!-- s: content -->
    <section id="sec_insertnoti" class="content_wrap">
        <div class="title_box">
            <p>공지사항</p>
        </div>
        <div class="">
           <div class="input_box">
               <label>
                   <span>제목</span>
                   <input type="text" name="" value="${noticeContent.notice_title}" readonly>
               </label>
               <label>
                   <span>작성자</span>
                   <input type="text" name="" value="${noticeContent.notice_writer}" readonly>
               </label>
               <label>내용
                   <textarea cols="50" wrap="hard" readonly>${noticeContent.notice_content}</textarea>
               </label>
           </div>


           <div class="btn_box">
               <button type="button" onclick="location.href='user_notice.do'">목록</button>
               <!-- 
                   	등록취소 선택 시 ex)지금 취소하시면 작성중이던 내용은 모두 사라집니다. 취소하시겠습니까? 형식의 확인 alert 뜬 후 삭제 진행
               -->
           </div>
        </div>
    </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>