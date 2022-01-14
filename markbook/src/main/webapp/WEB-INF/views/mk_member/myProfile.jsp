<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="${pageContext.request.contextPath }/resources//assets/js/index.js"></script>
	<div class="register-form-area" style="margin-top:20px; margin-bottom:20px;">
		<div class="register-form text-center">
			<div>
				<img src="${pageContext.request.contextPath }/resources/assets/img/main/noneProfile.png" style="width:225px; height:225px;"/>
			</div>
			<div class="input-box">
				<div class="single-input-fields">
					<label>이름</label>
					<input type="text" value="${memberInfo.m_name }" readonly>
				</div>
				<div class="single-input-fields">
					<label>아이디</label>
					<input type="text" value="${memberInfo.m_id}" readonly>
				</div>
				<div class="single-input-fields">
					<label>비밀번호</label>
					<input type="password" value="${memberInfo.m_pw}" readonly>
				</div>
				<div class="single-input-fields">
					<label>이메일</label>
					<input type="text" value="${memberInfo.m_email}" readonly>
				</div>
				<div class="single-input-fields">
					<label>주소</label>
					<input type="text" value="${memberInfo.m_addr1} ${memberInfo.m_addr2}" readonly>
				</div>
				<div class="single-input-fields">
					<label>주민등록번호</label>
					<table style="width:100%">
						<tr>
							<td>
								<input type="text" value="${memberInfo.m_idnum1}" readonly>
							</td>
							<td>
								<input type="password" value="${memberInfo.m_idnum2}">
							</td>
						</tr>
					</table>
				</div>
				<div class="single-input-fields">
					<label>휴대폰번호</label>
					<c:set var="phoneNum" value="${memberInfo.m_phone}"/>
					<input type="text" value="${fn:substring(phoneNum,0,3) }-${fn:substring(phoneNum,3,7) }-${fn:substring(phoneNum,7,11) }" readonly>
				</div>
				<div class="register-footer" style="margin-top:30px;">
				 	<p></p>
				 	<c:choose>
				 		<c:when test="${social eq 'google' }">
				 			<button type="button" onclick="social('${memberInfo.m_id}');" class="submit-btn3">Edit Profile</button>
				 		</c:when>
				 		<c:otherwise>
				 			<button type="button" onclick="chkPass('${memberInfo.m_id}');" class="submit-btn3">Edit Profile</button>	
				 		</c:otherwise>
				 	</c:choose>
				</div>
			</div>
		</div>
	</div>
<%@ include file="../include/footer.jsp"%>