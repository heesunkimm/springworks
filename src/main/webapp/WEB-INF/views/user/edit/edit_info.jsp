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
                            <img class="my_images" src="" alt="" style="display: none;" />
                        </div>
                        <div class="file_box">
                            <input class="file_name" placeholder="첨부파일" readonly>
                            <label for="file">사진찾기</label>
                            <input type="file" id="file" name="" value="" />
                        </div>
                    </div>
                    <div class="my_info">
                        <label>이름
                            <input type="text" name="" value="">
                        </label>
                        <label>생년월일
                            <input class="read_only" type="text" name="" value="" readonly>
                        </label>
                        <label>핸드폰 번호
                            <input type="text" name="" value="">
                        </label>
                    </div>
                    
                    <!-- 변경 불가 기본 정보 -->
                    <div class="no_change">
                        <label>메일주소
                            <input class="read_only" type="text" name="" value="" readonly>
                        </label>
                        <label>내선번호
                            <input class="read_only" type="text" name="" value="" readonly>
                        </label>
                        <label>본부
                            <input class="read_only" type="text" name="" value="" readonly>
                        </label>
                        <label>소속
                            <input class="read_only" type="text" name="" value="" readonly>
                        </label>
                        <label>직위
                            <input class="read_only" type="text" name="" value="" readonly>
                        </label>
                        <label>직책
                            <input class="read_only" type="text" name="" value="" readonly>
                        </label>
                    </div>
                    <div class="pw_changebox">
                        <label>새 비밀번호 입력
                            <input type="password" name="" value="">
                        </label>
                        <label>새 비밀번호 확인
                            <input type="password" name="" value="">
                        </label>

                        <ul class="pw_warningbox">
                            <li>* 비밀번호는 8~15자리 영어,숫자,특수기호를 포함해서 작성해주세요.</li>
                            <li><span></span></li>
                        </ul>
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
<script>
    // input 파일 커스텀
    $('#file').on('change', function() {
        let fileName = $(this).val().split('\\').pop();
        $('.file_name').val(fileName);
    });

    $('#file').on('change', function() {
        let file = this.files[0];
        let reader = new FileReader();
        
        reader.onload = function(e) {
            $('.img_box').css('position','initial');
            $('.my_images').show();
            $('.my_images').attr('src', e.target.result).show();
        };

        if (file) {
            reader.readAsDataURL(file);
        }
    });
</script>