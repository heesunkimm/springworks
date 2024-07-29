<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../index_top.jsp" %>
	<!-- s: content -->
    <section id="sec_notice" class="content">
        <div class="left_box">
            <ul class="cont_list">
                <li><a class href="javascript:;">공지사항</a></li>
            </ul>
        </div>
		<c:if test="${empty searchString}">
        <div class="right_box">
            <div class="title_box">
                <p>공지사항</p>
            </div>

            <div class="search_notice">
                <form name="search_f" action="user_notice_search.do" method="get" onsubmit="return searchCheck()">
                    <select name="search" id="search">
                        <option value="title">제목</option>
                        <option value="writer">작성자</option>
                    </select>
                    <label>
                        <input type="text" name="searchString" id="searchString" value="" />
                    </label>
                    <button type="submit">검색</button>
                </form>
            </div>

            <table class="noti_list s_table">
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
                	<c:if test="${empty noticeList}">
                		<tr>
                			<td colspan="5"> 등록된 공지사항이 없습니다. </td>
                		</tr>
                	</c:if>
                	<c:if test="${not empty noticeList}">
	                	<c:forEach var="noticeList" items="${noticeList}" varStatus="status">
		                    <tr>
		                        <td>${no-status.index}</td>
		                        <td>
		                        	<a href="user_notice_content.do?notice_num=${noticeList.notice_num}">${noticeList.notice_title}</a>
		                        </td>
		                        <td>${noticeList.user_name}</td>
		                        <td>
		                        	<c:set var="regDate" value="${noticeList.notice_regDate}" />
		                        	<fmt:parseDate var="parseRegDate" value="${regDate}" pattern="yyyy-MM-dd HH:mm:ss" />
		                        	<fmt:formatDate value="${parseRegDate}" pattern="yyyy-MM-dd"/>		                        	
		                        </td>		                        
		                        <td>${noticeList.notice_readCount}</td>
		                    </tr>
	                    </c:forEach>
                    </c:if>
                </tbody>
            </table>
            <!-- 페이징 -->
            <div class="pagination">
            	<c:if test="${startPage > pageBlock}"> 
		       		<a href="user_notice.do?pageNum=${startPage-3}">이전</a>
			    </c:if>
			    
			    <c:forEach var="i" begin="${startPage}" end="${endPage}">			        
			        <a href="user_notice.do?pageNum=${i}">${i}</a>
			    </c:forEach>
			    
			    <c:if test="${pageCount > endPage}">
			        <a href="user_notice.do?pageNum=${startPage+3}">다음</a>
			    </c:if>            	
            </div>            
        </div>
        </c:if>
        
        <c:if test="${not empty searchString}">
        <div class="right_box">
            <div class="title_box">
                <p>공지사항</p>
            </div>

            <div class="search_notice">
                <form name="search_f" action="user_notice_search.do" method="get">
                    <select name="search">
                        <option value="title" ${search == 'title' ? 'selected' : ''}>제목</option>
                        <option value="writer" ${search == 'writer' ? 'selected' : ''}>작성자</option>
                    </select>
                    <label>
                        <input type="text" name="searchString" value="${searchString}" />
                    </label>
                    <button type="submit">검색</button>
                </form>
            </div>

            <table class="noti_list s_table">
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
                	<c:if test="${empty searchList}">
                		<tr>
                			<td colspan="5"> 검색된 공지사항이 없습니다. </td>
                		</tr>
                	</c:if>
                	<c:if test="${not empty searchList}">
	                	<c:forEach var="searchList" items="${searchList}" varStatus="status">
		                    <tr>
		                        <td>${no-status.index}</td>
		                        <td>
		                        	<a href="user_notice_content.do?notice_num=${searchList.notice_num}">${searchList.notice_title}</a>
		                        </td>
		                        <td>${searchList.user_name}</td>
		                        <td>
		                        	<c:set var="regDate" value="${searchList.notice_regDate}" />
		                        	<fmt:parseDate var="parseRegDate" value="${regDate}" pattern="yyyy-MM-dd HH:mm:ss" />
		                        	<fmt:formatDate value="${parseRegDate}" pattern="yyyy-MM-dd"/>		                        	
		                        </td>		                        
		                        <td>${searchList.notice_readCount}</td>
		                    </tr>
	                    </c:forEach>
                    </c:if>
                </tbody>
            </table>
            <!-- 페이징 -->
            <div class="pagination">
            	<c:if test="${startPage > pageBlock}"> 
		       		<a href="user_notice_search.do?pageNum=${startPage-3}&search=${search}&searchString=${searchString}">이전</a>
			    </c:if>
			    
			    <c:forEach var="i" begin="${startPage}" end="${endPage}">			        
			        <a href="user_notice_search.do?pageNum=${i}&search=${search}&searchString=${searchString}">${i}</a>
			    </c:forEach>
			    
			    <c:if test="${pageCount > endPage}">
			        <a href="user_notice_search.do?pageNum=${startPage+3}&search=${search}&searchString=${searchString}">다음</a>
			    </c:if>            	
            </div>            
        </div>
        </c:if>
    </section>
    <!-- e: content -->   
<%@ include file="../index_bottom.jsp" %>
<script type="text/javascript">
	function searchCheck(){
		if(search_f.searchString.value==""){
			alert("검색하실 문자를 입력해주세요.")
			search_f.searchString.focus()
			return false;
		} else {	
			document.search_f.submit()
		}		
	}
</script>