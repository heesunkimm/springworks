<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SpringWorks_Login</title>
    <link rel="stylesheet" href="resources/css/reset.css">
	<link rel="stylesheet" href="resources/css/login_style.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="resources/js/login.js"></script>
</head>
<body>
    <!-- s: content -->
    <section id="login" class="content">
        <div class="login_box">
            <p>SpringWorks</p>
            <form name="f" action="index.do" method="post">
                <div class="input_box">
                    <label for="userId">사번
                        <input id="userId" type="text" name="" value="">
                    </label>
                    <label for="userPasswd">패스워드
                        <input id="userPasswd" type="password" name="" value="">
                    </label>
                </div>
                <button class="login_btn" type="submit">로그인</button>
                <!-- <a href="edit_info.do">개인정보수정</a> -->
            </form>
            <div class="find_box">
                <a class="passwd_set" href="javascript:;">비밀번호 재설정</a>
            </div>
        </div>
        
        <div class="popup_box" style="display: none;">
            <p class="popup_title">비밀번호 재설정</p>
            <a class="close_btn" href="javascript:;"><img src="resources/images/main/close.png" alt=""></a>
            <form name="f" action="" method="post">
                <div class="input_box">
                    <label>사번
                        <input type="text" name="" value="">
                    </label>
                    <label>패스워드 재설정
                        <input type="password" name="" value="">
                    </label>
                    <label>패스워드 재입력
                        <input type="password" name="" value="">
                    </label>
                </div>
                <div class="pbtn_box">
                    <button class="setting_btn" type="submit">재설정</button>
                </div>
            </form>
        </div>
        <div class="dimm"></div>
    </section>
    <!-- e: content -->
</body>
</html>