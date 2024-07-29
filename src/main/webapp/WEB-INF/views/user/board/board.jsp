<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="../index_top.jsp" %>
    <!-- s: content -->
    <section id="sec_board" class="content">
        <div class="left_box">
            <ul class="cont_list">
                <li><a class href="javascript:;">익명게시판</a></li>
            </ul>
        </div>

        <div class="right_box">
            <div class="title_box">
                <p>익명게시판</p>
            </div>

            <div class="board_insert">
                    <a href="insert_notice.do">등록</a>
            </div>
            <table class="board_list s_table">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
	                <c:if test="${empty privateBoard}">
	                	<tr>
	                		<td colspan="5">등록된 게시글이 없습니다.</td>
	                	</tr>
	                </c:if>
	                <c:if test="${not empty privateBoard}">
	                <c:forEach var="dto" items="${privateBoard}">
	                    <tr>
	                        <td>${dto.privateBoard_num}</td>
	                        <td><a href="javascript:;">${dto.privateBoard_title}</a></td>
	                        <td>${dto.privateBoard_writer}</td>
	                        <td>${dto.formattedDate}</td>
	                        <td>${dto.privateBoard_readCount}</td>
	                    </tr>
	                </c:forEach>
	                </c:if>
                </tbody>
            </table>
            <!-- 페이징 -->
            <div class="pagination">
            </div>        
        </div>
    </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>