$(function() {
	// tab foreach 통합
    $(".tab_btn").each(function() {
        $(this).click(function(e) {
            e.preventDefault();
            let tabId = $(this).data('tab');
        
            $('.tab-content').removeClass('s_active');
            $('#' + tabId).addClass('s_active');
            
            $('.tab_btn').removeClass('s_active');
            $(this).addClass('s_active');
        });
    });

    // select foreach 통합
    $('select.dataopt').each(function() {
        $(this).change(function() {
            let selectedDocument = $(this).find('option:selected').data('opt');

            $('.opt-content').removeClass('s_active');
            $('#' + selectedDocument).addClass('s_active');
        });
    });

	// popup foreach 통합
    $(".popup_btn").each(function() {
        $(this).on('click', function(e) {
            e.preventDefault();
            let popupId = $(this).data('popup');
        
            $('#' + popupId).addClass('s_active');
            $('.dimm').addClass('s_active');
        });

		$(".close_btn").on('click', function() {
			let popupId = $(this).data('popup');
			console.log(popupId)

			$('#' + popupId).removeClass('s_active');
            $('.dimm').removeClass('s_active');
			$("input[type='text']").val("");
			$("textarea").val("");
		});
    });

	$("#sec_works .toggle_btn").on('click', function(){
		$("#sec_works .toggle_btn").toggleClass('s_transfer');
		$("#sec_works .toggle-content").toggle();
	});

    // datapicker 펼침뷰 캘린더
	$('.springCalendal').each(function() {
		let datepicker = $(this);

		datepicker.datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
            monthNames: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
            minDate: new Date()
        });
	});

	// datapicker 클릭시 펼침뷰 캘린더
    let today = moment().startOf('day');
	$('.datepicker').each(function() {
		let datepicker = $(this);

		datepicker.daterangepicker({
			opens: 'left',
			locale: {
				format: 'YYYY-MM-DD',
				applyLabel: '적용',
				cancelLabel: '취소',
				daysOfWeek: ['일', '월', '화', '수', '목', '금', '토'],
				monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			},
			applyButtonClasses: 'my-apply-btn',
			cancelButtonClasses: 'my-cancel-btn',
			autoUpdateInput: false,
			minDate: today,
			minSpan: { days: 1 },
			isInvalidDate: function(date) {
				let dateRangePickerInstance = datepicker.data('daterangepicker');
				let startDate = dateRangePickerInstance.startDate;
				let endDate = dateRangePickerInstance.endDate;
				if (startDate && !endDate) {
					$('.daterangepicker').find('.off, .disabled').removeClass('off disabled');
				}
				$('.drp-selected').remove();
			},
		}, function(start, end, label) {
			datepicker.val(start.format('YYYY-MM-DD') + ' - ' + end.format('YYYY-MM-DD'));
		});

		datepicker.on('apply.daterangepicker', function(ev, picker) {
			let startDate = picker.startDate.format('YYYY-MM-DD');
			let endDate = picker.endDate.format('YYYY-MM-DD');
			datepicker.val(startDate + ' - ' + endDate);
			let dateRangePickerInstance = datepicker.data('daterangepicker');
			dateRangePickerInstance.setStartDate(startDate);
			dateRangePickerInstance.setEndDate(endDate);
		});
	});
});
