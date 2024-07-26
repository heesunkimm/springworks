$(function() {
    // 비밀번호 찾기 창 열기
    $(".passwd_set").on('click', function () {
        $(".popup_box, .dimm").show();
    })

    // 비밀번호 찾기 창 닫기
    $(".close_btn").on('click', function () {
        $(".popup_box, .dimm").hide();
    })
    
});
