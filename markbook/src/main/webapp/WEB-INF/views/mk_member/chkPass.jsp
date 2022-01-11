<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>
<script src="${pageContext.request.contextPath }/resources//assets/js/member.js"></script>
<style>
	.content{ position: relative; top: 50px; text-align:center;}
	.content div { margin-bottom:20px; }
</style>
</head>
<body>
<div class="wrapper">
	<div class="content">
		<div><b>본인 확인을 위해 비밀번호를 입력해주세요.</b></div>
		<div> <input type="password" id="pw"/> </div>
		<input type="button" value="확인" onclick="chkPass('${m_id}');">
	</div>
</div>
</body>
</html>