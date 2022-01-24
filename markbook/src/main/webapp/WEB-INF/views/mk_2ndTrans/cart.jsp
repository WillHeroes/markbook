<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- HEADER 연결  -->
<%@ include file="../include/header.jsp"%>

<!-- 오늘날짜 변수저장  -->
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />

<main>
	<!-- Hero area Start-->
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<div class="slider-area">
					<div
						class="slider-height2 slider-bg5 d-flex align-items-center justify-content-center">
						<div class="hero-caption hero-caption2">
							<h2>Cart Select</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  Hero area End -->
	<!-- 장바구니 선택  -->
	<div class="container text-center mb-150 mt-150">
		<div class="row align-items-center">
			<div class="container row align-items-center">
				<div class="contact-info">
					<span class="contact-info__icon"></span>
					<button style="padding: 50px;" onclick="javascript:location.href='${pageContext.request.contextPath }/mk_2ndTrans/bookcart'" class="genric-btn danger-border e-large">
						<span style="font-size: 40px;"><i class="ti-book pr-10"></i>2ndBook Cart</span>
					</button>
				</div>
				<div class="contact-info">
					<span class="contact-info__icon"></span>
					<button style="padding: 55px;" onclick="javascript:location.href='${pageContext.request.contextPath }/mk_delivery/deliverycart'" class="genric-btn danger-border e-large">
						<span style="font-size: 40px;"><i class="ti-truck pr-10"></i>Delivery Cart</span>
					</button>
				</div>
			</div>
		</div>
	</div>
</main>


<%@ include file="../include/footer.jsp"%>