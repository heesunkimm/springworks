<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../index_top.jsp" %>
	<!-- s : content -->
     <section id="sec_works" class="content">
        <div class="left_box">
            <ul class="cont_list">
                <li><a class="tab_btn s_active" href="javascript:;" data-tab="id_manage">계정관리</a></li>
                <li><a class="tab_btn" href="javascript:;"data-tab="approval_manage">결재관리</a></li>
                <li><a class="tab_btn" href="javascript:;"data-tab="attend_manage">근태관리</a></li>
                <li><a class="tab_btn" href="javascript:;"data-tab="schedule_manage">일정관리</a></li>
                <li><a class="tab_btn" href="javascript:;"data-tab="notice_manage">공지사항</a></li>
            </ul>
        </div>

        <div class="right_box">
            <!-- 계정관리 -->
            <div class="s_active tab-content" id="id_manage">
                <div class="title_box">
                    <p>계정관리</p>
                </div>
                <div class="btn_box">
                    <a class="popup_btn" href="javascript:;" data-popup="create_id">계정생성</a>
                </div>

                <div class="search_box">
                    <form name="" action="" method="post">
                        <label>본부/팀
                            <select name="">
                                <optgroup label="본부1">
                                    <option value="">팀1</option>
                                    <option value="">팀2</option>
                                    <option value="">팀3</option>
                                </optgroup>
                                <optgroup label="본부2">
                                    <option value="">팀1</option>
                                    <option value="">팀2</option>
                                </optgroup>
                            </select>
                        </label>
                        <label>직위/직책
                            <select name="">
                                <optgroup label="11">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                </optgroup>
                                <optgroup label="22">
                                    <option value="">2-1</option>
                                    <option value="">2-2</option>
                                </optgroup>
                            </select>
                        </label>
                        <label>사번
                            <input type="text" name="" value="">
                        </label>
                        <label>이름
                            <input type="text" name="" value="">
                        </label>
                        <!-- <div class="select_date">
                            <span>등록일</span>
                            <input type="text" class="select_cal datepicker" name="" id="datepicker5" placeholder="날짜선택" readonly/>
                        </div> -->
                        <label>재직여부
                            <input type="checkbox" name="" value="">
                        </label>
                        <button class="search_btn" type="submit">검색</button>
                    </form>
                </div>

                <div class="works_list">
                    <table class="s_table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>본부/팀</th>
                                <th>직위/직책</th>
                                <th>사번</th>
                                <th>이름</th>
                                <th>등록일</th>
                                <th>퇴직일</th>
                                <th>재직여부</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>0</td>
                                <td>본부/팀</td>
                                <td>직위/직책</td>
                                <td>사번</td>
                                <td><a href="javascript:;">이름</a></td>
                                <td>2022-07-20</td>
                                <td>2024-07-20</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 페이징 -->
                    <div class="pagination">
                    </div>
                </div>
            </div>
            <!-- 계정생성 팝업 -->
            <div class="popup_box" id="create_id" style="display: none;">
                <p class="popup_title">계정생성</p>
                <a class="close_btn" href="javascript:;" data-popup="create_id"><img src="resources/images/main/close.png" alt=""></a>
                <form name="f" action="create_user.do" method="post">
                    <div class="input_box">
                        <label>
                            <span>이름</span>
                            <input type="text" name="user_name" value="">
                        </label>
                        <label>
                            <span>성별</span>
                            <select class="select_gender" name="user_gender">
                                <option value="M">남</option>
                                <option value="F">여</option>
                            </select>
                        </label>
                        <label>
                            <span>생년월일</span>
                            <input type="text" class="userBirth" name="user_birth" value="" maxlength="10">
                        </label>
                        <div class="tel_box">
                            <span>핸드폰 번호</span>
                            <select class="select_hp1" name="user_hp1">
                                <option value="010">010</option>
                                <option value="010">017</option>
                                <option value="010">018</option>
                                <option value="010">019</option>
                            </select>
                            <em>-</em>
                            <input type="text" name="user_hp2" value="" maxlength="4">
                            <em>-</em>
                            <input type="text" name="user_hp3" value="" maxlength="4">
                        </div>
                        <div class="tel_box">
                            <span>내선번호</span>
                            <input type="text" name="user_tel1" value="" maxlength="3">
                            <em>-</em>
                            <input type="text" name="user_tel3" value="" maxlength="4">
                            <em>-</em>
                            <input type="text" name="user_tel3" value="" maxlength="4">
                        </div>
                        <div class="email_box">
                            <label>
                                <span>이메일</span>
                                <input type="text" name="user_email1" value="">
                            </label>
                            <p>@springworks.co.kr</p>
                        </div>
                        <div class="group_box">
                            <span>본부/팀</span>
                            <select class="myGroup" name="user_part">
                                <optgroup label="대표이사">
                                    <option value="대표이사">대표이사</option>
                                </optgroup>
                                <optgroup label="경영지원">
                                    <option value="경영지원">경영지원/경영지원</option>
                                </optgroup>
                                <optgroup label="사업">
                                    <option value="홍보">사업/홍보</option>
                                    <option value="마케팅">사업/마케팅</option>
                                </optgroup>
                                <optgroup label="영업">
                                    <option value="영업1팀">영업/영업1팀</option>
                                    <option value="영업2팀">영업/영업2팀</option>
                                    <option value="영업2팀">영업/영업3팀</option>
                                </optgroup>
                                <optgroup label="개발">
                                    <option value="프론트">개발/프론트</option>
                                    <option value="백앤드">개발/백앤드</option>
                                </optgroup>
                                <optgroup label="디자인">
                                    <option value="디자인1팀">디자인/디자인1팀</option>
                                    <option value="디자인2팀">디자인/디자인2팀</option>
                                </optgroup>
                            </select>
                            <input type="hidden" id="userGroup" name="user_group" value="">
                        </div>
                        <div class="position_box">
                            <span>직위/직책</span>
                            <select class="myPosition" name="user_duty">
                                <optgroup label="대표이사">
                                    <option value="대표이사">대표이사</option>
                                </optgroup>
                                <optgroup label="이사">
                                    <option value="본부장">이사/본부장</option>
                                </optgroup>
                                <optgroup label="부장">
                                    <option value="팀장">부장/팀장</option>
                                    <option value="팀원">부장/팀원</option>
                                </optgroup>
                                <optgroup label="차장">
                                    <option value="팀장">차장/팀장</option>
                                    <option value="팀원">차장/팀원</option>
                                </optgroup>
                                <optgroup label="과장">
                                    <option value="팀장">과장/팀장</option>
                                    <option value="팀원">과장/팀원</option>
                                </optgroup>
                                <optgroup label="대리">
                                    <option value="팀장">대리/팀장</option>
                                    <option value="팀원">대리/팀원</option>
                                </optgroup>
                                <optgroup label="사원">
                                    <option value="팀원" selected>사원/팀원</option>
                                </optgroup>
                            </select>
                            <input type="hidden" id="userPosition" name="user_position" value="">
                        </div>
                        <label>
                            <span>접근권한</span>
                            <select name="user_authority">
                                <option value="spw_user">기본권한</option>
                                <option value="spw_admin">관리자권한</option>
                            </select>
                        </label>
                        <div class="user_loginfo">
                            <div>
                                <label>
                                    <span>사번</span>
                                    <input type="text" name="user_id" value="${user_id}" readonly>
                                </label>
                                <label>
                                    <span>패스워드</span>
                                    <input type="password" name="user_passwd" value="${user_passwd}" readonly>
                                </label>
                            </div>
                            <button class="create_userId" type="button" onclick="CreateUserId()">사번생성</button>
                        </div>
                        <ul class="log_noti">
                            <li>* 초기 패스워드는 사번과 동일</li>
                        </ul>
                    </div>
                    <div class="pbtn_box">
                        <button type="submit">계정생성</button>
                    </div>
                </form>
            </div>
            <div class="dimm"></div>

            <!-- 결재관리 -->
            <div class="tab-content" id="approval_manage">
                <div class="title_box">
                    <p>결재관리</p>
                </div>
                <div class="btn_box">
                    <a href="javascript:;">결재등록</a>
                </div>

                <div class="search_box">
                    <form name="" action="" method="post">
                        <label>기안 본부/팀
                            <select name="">
                                <optgroup label="본부1">
                                    <option value="">팀1</option>
                                    <option value="">팀2</option>
                                    <option value="">팀3</option>
                                </optgroup>
                                <optgroup label="본부2">
                                    <option value="">팀1</option>
                                    <option value="">팀2</option>
                                </optgroup>
                            </select>
                        </label>
                        <label>사번
                            <input type="text" name="" value="">
                        </label>
                        <label>기안자
                            <input type="text" name="" value="">
                        </label>
                        <label>수신자
                            <input type="text" name="" value="">
                        </label>
                        <label>문서구분
                            <select name="">
                                <option value="">문서1</option>
                                <option value="">문서2</option>
                            </select>
                        </label>
                        <label>제목
                            <input type="text" name="" value="">
                        </label>
                        <div class="select_date">
                            <span>기안일</span>
                            <input type="text" class="select_cal datepicker" name="" id="datepicker6" placeholder="날짜선택" readonly/>
                        </div>
                        <label>결재상태
                            <select name="">
                                <option value="">결재대기</option>
                                <option value="">결재완료</option>
                            </select>
                        </label>
                        <button class="search_btn" type="submit">검색</button>
                    </form>
                </div>

                <div class="works_list">
                    <table class="s_table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>기안본부/팀</th>
                                <th>사번</th>
                                <th>기안자</th>
                                <th>수신자</th>
                                <th>문서구분</th>
                                <th>제목</th>
                                <th>기안일</th>
                                <th>결재상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>0</td>
                                <td>기안본부/팀</td>
                                <td>사번</td>
                                <td>기안자</td>
                                <td>수신자</td>
                                <td>문서구분</td>
                                <td><a href="javascript:;">제목</a></td>
                                <td>2024-07-20</td>
                                <td>결재상태</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 페이징 -->
                    <div class="pagination">
                    </div>
                </div>
            </div>

            <!-- 근태관리 -->
            <div class="tab-content" id="attend_manage">
                <div class="title_box">
                    <p>근태관리</p>
                </div>
                <div class="search_box">
                    <form name="" action="" method="post">
                        <label>본부/팀
                            <select name="">
                                <optgroup label="본부1">
                                    <option value="">팀1</option>
                                    <option value="">팀2</option>
                                    <option value="">팀3</option>
                                </optgroup>
                                <optgroup label="본부2">
                                    <option value="">팀1</option>
                                    <option value="">팀2</option>
                                </optgroup>
                            </select>
                        </label>
                        <label>직위/직책
                            <select name="">
                                <optgroup label="11">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                </optgroup>
                                <optgroup label="22">
                                    <option value="">2-1</option>
                                    <option value="">2-2</option>
                                </optgroup>
                            </select>
                        </label>
                        <label>사번
                            <input type="text" name="" value="">
                        </label>
                        <label>이름
                            <input type="text" name="" value="">
                        </label>
                        <div class="select_date">
                            <span>기간</span>
                            <input type="text" class="select_cal datepicker" name="" id="datepicker7" placeholder="날짜선택" readonly/>
                        </div>
                        <label>근태
                            <select name="">
                                <option value="">-</option>
                                <option value="">연차</option>
                                <option value="">오전반차</option>
                                <option value="">오후반차</option>
                            </select>
                        </label>
                        <button class="search_btn" type="submit">검색</button>
                    </form>
                </div>

                <div class="works_list">
                    <table class="s_table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>본부/팀</th>
                                <th>직위/직책</th>
                                <th>사번</th>
                                <th>이름</th>
                                <th>일자</th>
                                <th>근태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>0</td>
                                <td>본부/팀</td>
                                <td>직위/직책</td>
                                <td>사번</td>
                                <td>이름</td>
                                <td>2024-07-20</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 페이징 -->
                    <div class="pagination">
                    </div>
                </div>
            </div>

            <!-- 일정관리 -->
            <div class="tab-content" id="schedule_manage">
                <div class="title_box">
                    <p>일정관리</p>
                </div>

                <div class="calbox">
                    <div id="datepickers4" class="springCalendal datepicker-inline"></div>
                </div>

                <div class="btn_box">
                    <a class="schedule_insert" href="javascript:;">일정등록</a>
                </div>

                <div class="toggle_box">
                    <a class="toggle_btn" href="javascript:;">일정검색</a>
                </div>

                <div class="toggle-content" style="display: none;">
                    <div class="search_box">
                        <form name="" action="" method="post">
                            <div class="select_date">
                                <span>등록일</span>
                                <input type="text" class="select_cal datepicker" name="" id="datepicker9" placeholder="날짜선택" readonly/>
                            </div>
                            <label>
                                <select name="">
                                    <option value="">제목</option>
                                    <option value="">내용</option>
                                </select>
                            </label>
                            <label>
                                <input type="text" name="" value="">
                            </label>
                            <button class="search_btn" type="submit">검색</button>
                        </form>
                    </div>
    
                    <div class="works_list">
                        <table class="s_table">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>등록일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>0</td>
                                    <td>제목</td>
                                    <td>작성자</td>
                                    <td>2024-07-20</td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- 페이징 -->
                        <div class="pagination">
                        </div>
                    </div>
                </div>
            </div>

            <!-- 공지사항 -->
            <div class="tab-content" id="notice_manage">
                <div class="title_box">
                    <p>공지사항</p>
                </div>

                <div class="btn_box">
                    <a href="./insert_notice.html">공지등록</a>
                </div>

                <div class="search_box">
                    <form name="" action="" method="post">
                        <div class="select_date">
                            <span>등록일</span>
                            <input type="text" class="select_cal datepicker" name="" id="datepicker9" placeholder="날짜선택" readonly/>
                        </div>
                        <label>
                            <select name="">
                                <option value="">제목</option>
                                <option value="">내용</option>
                            </select>
                        </label>
                        <label>
                            <input type="text" name="" value="">
                        </label>
                        <button class="search_btn" type="submit">검색</button>
                    </form>
                </div>

                <div class="works_list">
                    <table class="s_table">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>등록일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>0</td>
                                <td><a href="javascript:;">제목</a></td>
                                <td>작성자</td>
                                <td>2024-07-20</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 페이징 -->
                    <div class="pagination">
                    </div>
                </div>
            </div>
        </div>
     </section>
    <!-- e: content -->
<%@ include file="../index_bottom.jsp" %>
<script>
	/* 계정생성 */
	function CreateUserId () {
		let userId = $("#create_id input[name='user_id']").val();
		let userPw = $("#create_id input[name='user_passwd']").val();
		let data = {
				user_id: userId,
				user_passwd: userPw
		}
		
		/* $.ajax({
		    url: "${pageContext.request.contextPath}/create_userId.ajax",
		    type: "POST",
		    data: JSON.stringify(data),
		    contentType: "application/json",
		    dataType: "json",
		    success: function(response) {
		        console.log("ajax response:", response);
		        
		    },
		    error: function(xhr, status, error) {
		        console.error('Error:', error);
		    }
		}); */
	}

   $('.userBirth').on('input', function() {
           let input = $(this).val();
           input = input.replace(/[^0-9]/g, '');
           if (input.length >= 5 && input.length <= 6) {
               input = input.replace(/^(\d{4})(\d{1,2})/, '$1-$2');
           } else if (input.length > 6) {
               input = input.replace(/^(\d{4})(\d{2})(\d{1,2})/, '$1-$2-$3');
           } else if (input.length >= 4) {
               input = input.replace(/^(\d{4})(\d{1,2})/, '$1-$2');
           }
           $(this).val(input);
       });

       $('select').each(function() {
           $(this).change(function() {
               let optgroupLabel = $(this).find('option:selected').closest('optgroup').attr('label');
               let hiddenInputId = $(this).hasClass('myGroup') ? '#userGroup' : '#userPosition';
               $(hiddenInputId).val(optgroupLabel);
               console.log(optgroupLabel);
           });
       });
</script>