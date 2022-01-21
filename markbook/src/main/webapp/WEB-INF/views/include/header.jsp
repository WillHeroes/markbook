<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>MarkBook</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath }/resources/assets/img/icon/favicon.png">

<!-- CSS here -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/slicknav.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/price_rangs.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/fontawesome-all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/slick.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/style.css">

</head>
<header>
	<div class="header-area">
		<div class="main-header ">
			<div class="header-top ">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div
								class="d-flex justify-content-between align-items-center flex-sm">
								<div class="header-info-left d-flex align-items-center">
									<!-- logo -->
									<div class="logo">
										<a href="${pageContext.request.contextPath }/index"><img
											src="${pageContext.request.contextPath }/resources/assets/img/logo/logo3.png"
											alt=""></a>
									</div>
									<!-- Search Box -->
									<form action="#" class="form-box">
										<input type="text" name="Search"
											placeholder="Search book by author or publisher">
										<div class="search-icon">
											<i class="ti-search"></i>
										</div>
									</form>
								</div>
								<div class="header-info-right d-flex align-items-center">
									<ul>
										<li><a href="#">Track Order</a></li>
										<li class="shopping-card"><a href="/markbook/mk_2ndTrans/cart"><img
												src="${pageContext.request.contextPath }/resources/assets/img/icon/cart.svg"
												alt=""></a></li>
										<li><c:choose>
												<c:when test="${m_id != null }">
													<div class="dropdown text-end">
														<a href="#" style="text-transform: none;"
															class="d-block link-dark text-decoration-none dropdown-toggle"
															id="dropdownUser1" data-bs-toggle="dropdown"
															aria-expanded="false"> <img
															src="${pageContext.request.contextPath }/resources/assets/img/main/noneProfile.png"
															alt="profile" width="32" height="32"
															class="rounded-circle"> &nbsp;${m_id }님
														</a>
														<ul class="dropdown-menu text-small"
															aria-labelledby="dropdownUser1" style="">
															<li><a class="dropdown-item" href="/markbook/mk_member/myProfile">My Profile</a></li>
															<li><a class="dropdown-item"
																href="#" onclick="cal_open();">Schedule</a></li>
															<li
																style="border-bottom: 1px solid rgb(199, 200, 201); padding: 0 0 5px 0;">
																<a class="dropdown-item" href="#" onclick="naver_tt();">Contact Us</a>
															</li>
															<li style="padding: 5px 0 0 0;"><a
																class="dropdown-item" href="/markbook/mk_member/logout">Sign
																	Out</a></li>
														</ul>
													</div>
												</c:when>
												<c:otherwise>
													<a href="/markbook/mk_member/login" class="btn header-btn">Sign
														In</a>
												</c:otherwise>
											</c:choose></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="header-bottom  header-sticky">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-12">
							<!-- logo 2 -->
							<div class="logo2">
								<a href="${pageContext.request.contextPath }/index"><img
									src="${pageContext.request.contextPath }/resources/assets/img/logo/logo.png"
									alt=""></a>
							</div>
							<!-- Main-menu -->
							<div class="main-menu text-center d-none d-lg-block">
								<nav>
									<ul id="navigation">
										<li><a href="${pageContext.request.contextPath }/index">Home</a></li>
										<li><a href="${pageContext.request.contextPath }/about">About us</a></li>
										<li><a href="#">BookList</a></li>
										<li><a href="${pageContext.request.contextPath }/mk_2ndTrans/booklist">Deals</a></li>
										<li><a href="#">My Page</a></li>
										<li><a href="${pageContext.request.contextPath }/mk_requestBoard/notice">RequestBoard</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<body>