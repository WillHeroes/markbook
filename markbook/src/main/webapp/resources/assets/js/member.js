
//----------------------------- 회원가입 -----------------------------//
function findAddr(){
	
	// 주소 검색
	var width = 500; // 팝업 너비 / 높이
	var height = 600;
		
	new daum.Postcode({
		width: width,
       	height : height,
	    oncomplete: function(data) {
	  		// console.log(data);
	        	
			var roadAddr = data.roadAddress; // 도로명 주소
	    	var jibunAddr = data.jibunAddress; // 지번 주소
	            
	    	if(roadAddr != '') document.getElementById("addr").value = roadAddr;
	    	else if(jibunAddr != '') document.getElementById("addr").value = jibunAddr;
			}
	    }
	).open({
		left: (window.screen.width / 2) - (width / 2),
	    top : (window.screen.height / 2) - (height / 2)
	});
}
 
function inpChk() {	
	// 유효성 검사
	if(document.joinFr.m_id.value == "") {
		alert("아이디를 입력하세요.");
		return false;
	}	
	if(document.joinFr.m_pw.value == "") {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if(document.joinFr.m_pw_chk.value == "") {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if(document.joinFr.m_pw.value != document.joinFr.m_pw_chk.value) {
		alert("비밀번호가 다릅니다.");
		return false;
	}
	if(document.joinFr.m_name.value == "") {
		alert("이름을 입력하세요.");
		return false;
	}
	if(document.joinFr.m_idnum1.value == "") {
		alert("주민등록번호를 입력하세요.");
		return false;
	}
	if(document.joinFr.m_idnum2.value == "") {
		alert("주민등록번호를 입력하세요.");
		return false;
	}
	if(document.joinFr.m_idnum1.value.length != 6 || document.joinFr.m_idnum2.value.length != 7) {
		alert("주민등록번호를 확인 해주세요.");
		return false;
	}
	if(document.joinFr.emailAddr.value == "") {
		alert("이메일 주소를 입력하세요.");
		return false;
	}
	if(document.joinFr.emailAddr.value.search("@") > 0) {
		alert("@없이 이메일만 적어주세요.");
		return false;
	}
	if(document.joinFr.domain.value == "none") {
		alert("도메인 주소를 선택하세요.");
		return false;
	}
	if (document.joinFr.m_phone.value == "") {
		alert("휴대폰 번호를 입력하세요.");
		return false;
	}
	if (document.joinFr.m_phone.value.search("-") > 0) {
		alert("-없이 숫자만 입력하세요.");
		return false;
	}
	if(document.joinFr.m_addr1.value == "" || document.joinFr.m_addr2.value == "") {
		alert("주소를 입력하세요.");
		return false;
	}
	if (document.joinFr.isCheck.value == "0") {
		alert("아이디 중복체크를 해주세요.");
		return false;
	}
	if (document.joinFr.isCheck.value == "1") {
		alert("중복된 아이디입니다.");
		return false;
	}
	
	// 이메일 주소 합치기
	var emailAddr = document.joinFr.emailAddr.value;
	var domainAddr = document.joinFr.domain.value;
	var realEmail = emailAddr+"@"+domainAddr;
		
	document.joinFr.m_email.value = realEmail;	
}
function duplicateCheck() {
	
	var id = document.joinFr.m_id.value;
	
	if (id == "") alert("아이디를 입력하세요.");
	else {
		$.ajax({
			url: "/markbook/mk_member/idchk",
			type: "post",
			dataType: "json",
			data: {"m_id" : id},
			success: function(data) {
				if(data > 0) {
					alert("중복된 아이디입니다.");
					$("#isCheck").attr("value","1");
					
				} else if (data == 0) {
					alert("사용 가능한 아이디입니다.");
					$("#isCheck").attr("value","2");
				}
			}
		})
	}
}

$(document).ready(function() {
	$('#addr').click(function() {
		findAddr();
	});
});


//----------------------------- 로그인 -----------------------------//

function loginChk() {
	if (document.loginFr.m_id.value == "") {
		alert("아이디를 입력하세요");
		return false;
	}
	if (document.loginFr.m_pw.value == "") {
		alert("비밀번호를 입력하세요");
		return false;
	}
}


//--------------------------- 아이디 찾기 ---------------------------//

function findID() {
	
	var name = $('input[name=m_name]').val();
	var numFront = $('input[name=m_idnum1]').val();
	var numBack = $('input[name=m_idnum2]').val();
	
	if (name == "") {
		alert("이름을 입력하세요");
		return false;
	}
	if (numFront == "" || numBack == "") {
		alert("주민번호를 입력하세요");
		return false;
	}
	if ((numFront.length != 6) || (numBack.length != 7)) {
		alert("주민등록번호를 확인 해주세요.");
		return false;
	}
	
	$.ajax ({
		url: "/markbook/mk_member/findId",
		type: "post",
		dataType: "text",
		data: {"m_name" : name, "m_idnum1" : numFront, "m_idnum2" : numBack},
		success: function(data) {
			if(data == "none") {
				alert("등록된 정보가 없습니다.");
				return false;
			} 
			else {
				alert("회원님의 아이디는 "+data+"입니다.");
				
				if(confirm("로그인 하시겠습니까?")) location.href="/markbook/mk_member/login";
				else return false;
			}
		}
		,error:function(e){
       		alert("에러 발생! 관리자에게 문의하세요.");
       		console.log(e);
    	}
	})
}

function editChk() {
	if (document.editFr.m_id.value == "") {
		alert("아이디를 입력하세요.");
		return false;
	}
	if (document.editFr.m_name.value == "") {
		alert("이름을 입력하세요.");
		return false;
	}
	if(document.editFr.emailAddr.value == "") {
		alert("이메일 주소를 입력하세요.");
		return false;
	}
	if(document.editFr.emailAddr.value.search("@") > 0) {
		alert("@없이 이메일만 적어주세요.");
		return false;
	}
	if(document.editFr.domain.value == "none") {
		alert("도메인 주소를 선택하세요.");
		return false;
	}
	if(document.editFr.m_addr1.value == "" || document.editFr.m_addr2.value == "") {
		alert("주소를 입력하세요.");
		return false;
	}
	if((document.editFr.m_idnum1.value == "") || (document.editFr.m_idnum2.value == "")) {
		alert("주민등록번호를 입력하세요.");
		return false;
	}
	if(document.editFr.m_idnum1.value.length != 6 || document.editFr.m_idnum2.value.length != 7) {
		alert("주민등록번호를 확인 해주세요.");
		return false;
	}
	if (document.editFr.m_phone.value == "") {
		alert("휴대폰 번호를 입력하세요.");
		return false;
	}
	if (document.editFr.m_phone.value.search("-") > 0) {
		alert("-없이 숫자만 입력하세요.");
		return false;
	}
	
	var m_id = document.editFr.m_id.value;
	var emailAddr = document.editFr.emailAddr.value;
	var domainAddr = document.editFr.domain.value;
	var realEmail = emailAddr+"@"+domainAddr;
		
	document.editFr.m_email.value = realEmail;	
	
	if(document.editFr.m_id.value != document.editFr.realID.value) {
		$.ajax({
			url: "/markbook/mk_member/idchk",
			type: "post",
			dataType: "json",
			data: {"m_id" : m_id},
			async: false,
			success: function(num) {
				if(num > 0) {
					m_id = idChk();
				}
			}
		})
	}

	if (m_id == '0') return false;
}

function idChk() {
	// 재귀함수로 사용
	var m_id = prompt("아이디가 이미 존재합니다. 다른 아이디를 입력하세요.", "");
	if (m_id == null) return 0;
	if (confirm(m_id+"를 아이디로 사용하시겠습니까?")) {
		$.ajax({
			url: "/markbook/mk_member/idchk",
			type: "post",
			dataType: "json",
			data: {"m_id" : m_id},
			async: false,
			success: function(num) {
				if(num > 0) {
					alert("중복된 아이디입니다.");
					idChk();
				}
				else {
					document.editFr.m_id.value = m_id;
				}
			}
		})
	}
}
