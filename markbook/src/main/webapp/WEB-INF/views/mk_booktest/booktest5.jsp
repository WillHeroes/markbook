<%@ page contentType = "text/html;charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>심리테스트로 책 추천</title>
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
    
</head>
<style type="text/css">
	.submit-btn3:hover, img:hover {
		filter:brightness(90%);
	}
</style>

<body>
    <main class="login-bg">
        <!-- login Area Start -->
        <div class="login-form-area">
            <div class="login-form">
                <!-- Login Heading -->
                <div class="login-heading">
                    <span>심리테스트로 책 추천받기</span>
                    <p>무슨 책을 읽어야 할지 모르겠다구요? <br>제가 추천해드릴게요!</p>
                </div>
                <!-- Single Input Fields -->
                <form method="post" action="/markbook/mk_booktest/booktest5" name="loginFr">
	                <div class="input-box">
	                    <div class="single-input-fields">
	                        <label>Q5: 연인,친구와 진지하게 이야기할 때 주로 대화내용은?</label><br><br>
	                    </div>
	                        <input type="radio" name="answer" value="one">돈을 어떻게 모아서 미래에 쓸지 의논한다<br><br>
	                        <input type="radio" name="answer" value="two"> 다음 여행에 대해 의논한다<br><br>
	                        <input type="radio" name="answer" value="three"> 철학적인 내용에 대해 의논한다<br><br>
	                    
	                    <div style="margin-top:25px; text-align:center;">
	                        <input type="submit" value="다음" class="submit-btn3">
	                    </div>

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
    
    </body>
</html>