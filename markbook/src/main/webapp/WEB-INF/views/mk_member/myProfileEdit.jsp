<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/member.css">
<script src="${pageContext.request.contextPath }/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="${pageContext.request.contextPath }/resources//assets/js/member.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">	
	$(document).ready(function(){
		
		var email = '<c:out value="${memberInfo.m_email}"/>';
		var idx = email.indexOf("@");

		$('input[name=emailAddr]').attr('value', email.substring(0, idx));
		
		$('#profile').click(function (e) {
			$('#proImg').click();
		});
		
		$('#proImg').change(function() {
			
			
 			var fileVal = $('#proImg').val();
			if (fileVal != "") {
				// 확장자 분리 + 소문자로
				var ext = fileVal.split('.').pop().toLowerCase() 
				
				if (ext != "jpeg" && ext != "jpg" && ext != "png") {
					alert("jpeg, jpg, png 파일만 업로드 가능합니다.");
					$('input[name=attrChk]').attr('value','1');
					return false;
				}
			}
			
			var maxSize = 10 * 1024 * 1024;
			var fileSize = $('#proImg')[0].files[0].size;
			
			if (maxSize < fileSize) {
				alert("첨부파일 사이즈는 10MB 이내로 등록 가능합니다.");
				$('input[name=attrChk]').attr('value','2');
				return false;
			}
						
			// img prev
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#profile').attr('src', e.target.result);
			}
			reader.readAsDataURL($('#proImg')[0].files[0]);
			
			
			let formData = new FormData();
			
			formData.append("m_image", $('#proImg')[0].files[0]);
			
			$.ajax({
				url: '/markbook/mk_member/profileImg',
				processData : false,
				contentType: false,
				data: formData,
				type: 'POST',
				dataType: 'json'
			});
			
		});
	});
</script>

<form method="post" action="/markbook/mk_member/myProfileEdit" name="editFr" enctype="multipart/form-data" onsubmit="return editChk();">
	<input type="hidden" name="realID" value="${memberInfo.m_id }"/>
	<input type="hidden" name="attrChk" value="0"/>
	<div class="register-form-area" style="margin-top:20px; margin-bottom:20px;">
		<div class="register-form text-center">
			<div>
				<img src="${pageContext.request.contextPath }/resources/assets/img/main/noneProfile.png" id="profile" style="width:225px; height:225px; cursor:pointer;"/>
			</div>
			<input type="file" id="proImg" name="uploadFile" style="display:none">
			<span style="color:rgb(180,180,180);">Only jpeg, jpg, png</span>
			<div class="input-box">
				<div class="single-input-fields">
					<label>아이디</label>
					<input type="text" value="${memberInfo.m_id}" disabled>	
					<input type="hidden" name="m_id" value="${memberInfo.m_id}"/>
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
	                       <td style="width:50%;">
		                        <div class="default-select" id="default-select">
									<select name="domain" id="domainss">
										<option value="none">선택하세요</option>
				                        <option value="naver.com" ${domain == 'naver' ? 'selected':''}>@naver.com</option>
				                        <option value="daum.net" ${domain == 'daum' ? 'selected':''}>@daum.net</option>
				                        <c:choose>
				                        	<c:when test="${social eq 'google' }">
				                        		<option value="gmail.com" selected>@gmail.com</option>	
				                        	</c:when>
				                        	<c:otherwise>
				                        		<option value="gmail.com" ${domain == 'gmail' ? 'selected':''}>@gmail.com</option>
				                        	</c:otherwise>
				                        </c:choose>
									</select>
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