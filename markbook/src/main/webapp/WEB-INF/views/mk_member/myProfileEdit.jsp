<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/member.css">
<script src="${pageContext.request.contextPath }/resources//assets/js/member.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	window.onload = function() {
		var email = '<c:out value="${memberInfo.m_email}"/>';
		var social = '<c:out value="${social}"/>';
		var idx = email.indexOf("@");
		
		$('input[name=emailAddr]').attr('value', email.substring(0, idx));
		
		if (social == "google") {
			alert("ㄴㄴ");
			$('#domain').val('gmail.com').prop("selected", true);
		}
	}
</script>

<form method="post" action="/markbook/mk_member/myProfileEdit" name="editFr" onsubmit="return editChk();">
	<input type="hidden" name="realID" value="${memberInfo.m_id }"/>
	<div class="register-form-area" style="margin-top:20px; margin-bottom:20px;">
		<div class="register-form text-center">
			<div>
				<img src="${pageContext.request.contextPath }/resources/assets/img/main/noneProfile.png" style="width:225px; height:225px;"/>
			</div>
			<div class="input-box">
				<div class="single-input-fields">
					<label>아이디</label>
					<input type="text" name="m_id" value="${memberInfo.m_id}" disabled>
				</div>
				<div class="single-input-fields">
					<label>이름</label>
					<input type="text" name="m_name" value="${memberInfo.m_name}">
				</div>
				<div class="single-input-fields">
					<label>이메일</label>
					<table style="width:100%">
                   		<tr>
                   			<td style="width:50%">
	                        	<input type="text" name="emailAddr" value="">
	                        </td>
	                        <td style="width:50%">
			                    <select style="display:none;" name="domain" id="domain">
			                    	<option value="none">선택하세요</option>
			                        <option value="naver.com">@naver.com</option>
			                        <option value="daum.net">@daum.net</option>
			                        <option value="gmail.com">@gmail.com</option>
			                    </select>
			                    <div class="nice-select" tabindex="0" style="margin-top:8px; border-radius:0px; height:50px; color:rgb(139,139,139)">
				                    <span class="current">선택하세요</span>
				                    <ul class="list">
					                    <li data-value="none" class="option">선택하세요</li>
					                    <li data-value="naver.com" class="option">@naver.com</li>
					                    <li data-value="daum.net" class="option">@daum.net</li>
					                    <li data-value="gmail.com" class="option selected">@gmail.com</li>
				                    </ul>
			                    </div>
		                    </td>
	                    </tr>
                    </table>
				</div>
				<div class="single-input-fields">
					<label>주소</label> 
	                <input type="text" style="width:85%; float:left;" name="m_addr1" id="addr" value="${memberInfo.m_addr1}" readonly>
					<a class="joinBtn" id="addr_search" onclick="findAddr()">검색</a>
	            </div>
                <div class="single-input-fields">
                    <input type="text" value="${memberInfo.m_addr2}" name="m_addr2">
                </div>
                
				<div class="single-input-fields">
					<label>주민등록번호</label>
					<table style="width:100%">
						<tr>
							<td>
								<input type="text" name="m_idnum1" value="${memberInfo.m_idnum1}">
							</td>
							<td>
								<input type="password" name="m_idnum2">
							</td>
						</tr>
					</table>
				</div>
				<div class="single-input-fields">
					<label>휴대폰번호</label>
					<input type="text" value="${memberInfo.m_phone }" name="m_phone">
				</div>
				<input type="hidden" name="m_email" id="in" value=""/> 
				<div class="register-footer" style="margin-top:30px;">
				<table style="text-align:left;">
					<tr>
						<td><p> Do you want to change your password? <a href="javascript:void(0);" onclick="changePass();">Change</a> here</p></td>
					</tr>
					<tr>
						<td><p> Are you sure you want to leave your account? <a href="#">Click</a> here</p></td>
					</tr>
				</table>
				<button class="submit-btn3">Edit</button>
				</div>
			</div>
		</div>
	</div>
</form>
<%@ include file="../include/footer.jsp"%>