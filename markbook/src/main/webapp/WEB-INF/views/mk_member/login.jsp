<%@ page contentType = "text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MARKBOOK : 로그인</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/icon/favicon.png">

	<!-- CSS here -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price_rangs.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/themify-icons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/slick.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
    
    <!-- Social login -->
    <meta name ="google-signin-client_id" content="314033518196-l5iehs2o5u2quhq3teme41obc54vi568.apps.googleusercontent.com">
    
</head>
<style type="text/css">
	.submit-btn3:hover, img:hover { filter:brightness(90%); }
</style>
<script type="text/javascript">
	function init() {
		gapi.load('auth2', function() {
			gapi.auth2.init();
			options = new gapi.auth2.SigninOptionsBuilder();
			options.setPrompt('select_account');
			options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
			
			$('#GgCustomLogin').click(function() {
				gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
			});
		})
	}
	
	function onSignIn(googleUser) {
		var access_token = googleUser.getAuthResponse().access_token
		$.ajax({
			url: 'https://people.googleapis.com/v1/people/me'
			, data: {personFields:'birthdays', key:'AIzaSyD-b76m82Lvq3lQddzZ3wLRVuemFLM61WI', 'access_token': access_token}
			, method:'GET'
		})
		.done(function(e){
			var profile = googleUser.getBasicProfile();
			
			var m_name =  profile.getName();
			var m_email = profile.getEmail();
			
			// 이메일 @ 앞으로 자르기 (아이디)
			var idx = m_email.indexOf("@");
			
			var m_id = "google-";
			m_id += m_email.substring(0, idx);
			
 			$.ajax({
				url: "/markbook/mk_member/gg_login",
				type: "post",
				dataType: "json",
				data: {"m_id" : m_id, "m_name" : m_name, "m_email" : m_email},
				success: function(data) {
					if (data == 2) {
						alert("해당 소셜아이디는 탈퇴 이력이 존재합니다.\n일반 회원가입으로 진행해주세요.");
						location.href="/markbook/mk_member/joinCheck";
					}
					else if(data == 1) {
						alert("프로필에서 나머지 정보들을 입력해주세요");
						location.href="/markbook/mk_member/myProfileEdit?id="+m_id;
					}
					else if (data == 0) {
						location.href="/markbook/index";
					}
				}
			})
			
		})
		.fail(function(e){
			console.log(e);
		})
	}
	function onSignInFailure(t){		
		console.log(t);
	}
	
	function signOut() {
		var auth2 = gapi.auth2.getAuthInstance();
		auth2.signOut().then(function () {
			alert("signout");
		})
	}
	

</script>
<body>
    <main class="login-bg">
        <!-- login Area Start -->
        <div class="login-form-area">
            <div class="login-form">
                <!-- Login Heading -->
                <div class="login-heading">
                    <span>Login</span>
                    <p>Enter Login details to get access</p>
                </div>
                <!-- Single Input Fields -->
                <form method="post" action="/markbook/mk_member/login" name="loginFr" onsubmit="return loginChk();">
	                <div class="input-box">
	                    <div class="single-input-fields">
	                        <label>ID</label>
	                        <input type="text" placeholder="아이디" name="m_id">
	                    </div>
	                    <div class="single-input-fields">
	                        <label>Password</label>
	                        <input type="password" placeholder="비밀번호" name="m_pw">
	                    </div>
	                    <div class="single-input-fields login-check">
	                        <input type="hidden" id="fruit1" name="keep-log">
	                        <label for="fruit1">&nbsp;</label>
	                    <a href="/markbook/mk_member/findInfo" class="f-right">Forgot Information?</a>
	                    </div>
	                    
	                    <div style="margin-top:25px; text-align:center;">
	                    	<button class="submit-btn3">Login</button>
	                    </div>
	                    
	                    <!-- social login -->
		                <div style="text-align:center; padding-top:50px;">
		                	<img id="GgCustomLogin" src="${pageContext.request.contextPath }/resources/assets/img/social/google.png" style="margin-bottom:10px; cursor:pointer; width:60%;"/><br>
		                	<img src="${pageContext.request.contextPath }/resources/assets/img/social/kakao.png" style="margin-bottom:10px; cursor:pointer; width:60%;"><br>
		                	<a href="${url}">
		                	<img id="naver_id_login" src="${pageContext.request.contextPath }/resources/assets/img/social/naver.png" style="cursor:pointer; width:60%;"/>
		                	</a>
		                </div>


	                </div>
	                
	                <!-- form Footer -->
	                <div class="login-footer">
	                    <p>Don't have an account? <a href="/markbook/mk_member/joinCheck">Sign Up</a>  here</p>
	                    
	                </div>
                </form>
            </div>
        </div>
        <!-- login Area End -->
    </main>

    <!-- JS here -->
    <!-- Jquery, Popper, Bootstrap -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/bootstrap.min.js"></script>

    <!-- Slick-slider , Owl-Carousel ,slick-nav -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/slick.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.slicknav.min.js"></script>

    <!--wow , counter , waypoint, Nice-select -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.magnific-popup.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/price_rangs.js"></script>

    <!-- contact js -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/contact.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.form.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/mail-script.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.ajaxchimp.min.js"></script>

    <!--  Plugins, main-Jquery -->	
    <script src="${pageContext.request.contextPath }/resources//assets/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
    
    <!-- 유효성 검사 -->
    <script src="${pageContext.request.contextPath }/resources//assets/js/member.js"></script>
    
    <!-- Social login -->
    <!-- google platform library -->
    <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
    
    </body>
</html>