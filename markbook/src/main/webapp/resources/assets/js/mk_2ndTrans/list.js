
/* 카테고리 옵션 체크*/

$(document).ready(function() {

	//체크박스 - Filter by Category 중복 체크 제거
	$('input[type="checkbox"][name="b2_category"]').click(function() {

		if ($(this).prop('checked')) {

			$('input[type="checkbox"][name="b2_category"]').prop('checked', false);

			$(this).prop('checked', true);
		}

	});

	//체크박스 - Filter by BookStatus 중복 체크 제거
	$('input[type="checkbox"][name="b2_bookstatus"]').click(function() {

		if ($(this).prop('checked')) {

			$('input[type="checkbox"][name="b2_bookstatus"]').prop('checked', false);

			$(this).prop('checked', true);
		}

	});

	//체크박스 - Filter by SalesStatus 중복 체크 제거
	$('input[type="checkbox"][name="b2_sellstatus"]').click(function() {

		if ($(this).prop('checked')) {

			$('input[type="checkbox"][name="b2_sellstatus"]').prop('checked', false);

			$(this).prop('checked', true);
		}

	});
});

/* 검색버튼 작동 */
function cateSearch() {
	
	var b2_category = $('input[type="checkbox"][name="b2_category"]:checked').val();
	var b2_bookstatus = $('input[type="checkbox"][name="b2_bookstatus"]:checked').val();
	var b2_sellstatus = $('input[type="checkbox"][name="b2_sellstatus"]:checked').val();
	
	if(b2_category == null || b2_bookstatus == null || b2_sellstatus == null){
		alert("카테고리 검색값을 전부 선택해주세요");
		return false;
	}
	
	location.href = "/markbook/mk_2ndTrans/search?option=category&b2_category='"+b2_category+"'&b2_bookstatus='"+b2_bookstatus+"'&b2_sellstatus='"+b2_sellstatus+"'";

}

