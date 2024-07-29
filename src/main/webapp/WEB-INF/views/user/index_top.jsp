<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Springworks</title>
	<link rel="stylesheet" href="resources/css/reset.css">
	<link rel="stylesheet" href="resources/css/user_style.css">
    <link rel="stylesheet"href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="resources/js/user.js"></script>
</head>
<body>
	<header>
        <div class="logo_box">
            <p><a href="./index.html">SpringWorks</a></p>
        </div>
        <ul class="nav_list">
            <li><a href="mailbox.do">메일함</a></li>
            <li><a href="approval.do">전자결제</a></li>
            <li><a href="attend.do">근태관리</a></li>
            <li><a href="conference.do">회의실예약</a></li>
            <li><a href="calendal.do">캘린더</a></li>
            <li><a href="notice.do">공지사항</a></li>
            <li><a href="board.do">익명게시판</a></li>
            <li><a href="works.do">works</a></li>
        </ul>
        <div class="edit_box">
            <a href="edit_info.do">
                <span>설정</span>
                <div class="img_box">
                    <img src="resources/images/main/setting.png" alt="" />
                </div>
            </a>
        </div>
    </header>
</body>