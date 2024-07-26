<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <a href="javascript:;">등록</a>
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
                    <tr>
                        <td>1</td>
                        <td><a href="javascript:;">익명게시글 제목 작성칸입니다.</a></td>
                        <td>작성자</td>
                        <td>2024-07-20</td>
                        <td>222</td>
                    </tr>
                </tbody>
            </table>
            <!-- 페이징 -->
            <div class="pagination">
            </div>        
        </div>
    </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>