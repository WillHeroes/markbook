<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<script src="${pageContext.request.contextPath }/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="${pageContext.request.contextPath }/resources//assets/js/member.js"></script>
<style>
	.content{ position: relative; top: 50px; text-align:center;}
	.content div { margin-bottom:20px; }
	#pw, #pwConf {width:250px; height:25px;}
</style>
</head>
<body>
<div class="wrapper">
	<div class="content">
		<div> <input type="password" placeholder="비밀번호" id="pw"/> </div>
		<div> <input type="password" placeholder="비밀번호 확인" id="pwConf"/> </div>
		<input type="button" value="확인" onclick="changePass('${m_id}');">
	</div>
</div>
</body>
</html>