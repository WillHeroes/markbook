<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header 연결  -->
<%@ include file="../include/header.jsp"%>
<!-- css 연결  -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/mk_2ndTrans.css">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<main>
	<!-- Hero area Start-->
	<div class="container">
		<div class="row">
			<div class="col-xl-12">
				<div class="slider-area">
					<div
						class="slider-height2 slider-bg2 d-flex align-items-center justify-content-center">
						<div class="hero-caption hero-caption2">
							<h2>Secondhand_book_Deals</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  Hero area End -->
    <!--  services-area start-->
    <div class="services-area2">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="col-xl-12">
                            <!-- Single -->
                            <div class="single-services d-flex align-items-center mb-0">
                                <div class="features-img" id="infoimg">
                                    <img src="${pageContext.request.contextPath}/resources/upload/${bvo.b2_image}" alt="">
                                </div>
                                <div class="features-caption">
                                    <h3>${bvo.b2_title }</h3>
                                    <p>By ${bvo.b2_writer }</p>
                                    <div class="price">
                                        <span>${bvo.b2_highestprice } 원</span>
                                    </div>
                                    <div class="review">
                                        <div class="rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star-half-alt"></i>
                                        </div>
                                        <p>(120 Review)</p>
                                    </div>
                                    <c:if test="${bvo.b2_seller_id != m_id && bvo.b2_sellstatus == 0 }">                                    
                                    	<a href="${pageContext.request.contextPath}/mk_2ndTrans/bookbid?b2_num=${bvo.b2_num }" class="white-btn mr-10">입찰하기</a>
                                    </c:if>
                                    <c:if test="${bvo.b2_seller_id == m_id && bvo.b2_sellstatus == 0}">
                                    	<a href="${pageContext.request.contextPath}/mk_2ndTrans/bookmodify?b2_num=${bvo.b2_num }" class="white-btn mr-10">상품수정</a>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- services-area End-->
    <!--Books info Start -->
    <section class="our-client section-padding best-selling">
        <div class="container">
            <div class="row">
                <div class="offset-xl-1 col-xl-10">
                    <div class="nav-button f-left">
                        <!--Nav Button  -->
                        <nav>
                            <div class="nav nav-tabs " id="nav-tab" role="tablist">
                                <a class="nav-link active" id="nav-one-tab" data-bs-toggle="tab" href="#nav-one" role="tab" aria-controls="nav-one" aria-selected="true">상품정보</a>
                                <a class="nav-link" id="nav-two-tab" data-bs-toggle="tab" href="#nav-two" role="tab" aria-controls="nav-two" aria-selected="false">책내용</a>
                                <a class="nav-link" id="nav-three-tab" data-bs-toggle="tab" href="#nav-three" role="tab" aria-controls="nav-three" aria-selected="false">입찰내역</a>
                            </div>
                        </nav>
                        <!--End Nav Button  -->
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <!-- Nav Card -->
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade active show" id="nav-one" role="tabpanel" aria-labelledby="nav-one-tab">
                    <!-- Tab 1 -->  
                    <div class="row">
                        <div class="offset-xl-1 col-lg-9">
                            <p>카테고리: ${bvo.b2_category }</p>
                            <p>작가: ${bvo.b2_writer }</p>
                            <p>출판사: ${bvo.b2_publisher }</p>
                            <p>상품상태: ${bvo.b2_bookstatus }</p>
                            <p>판매자 아이디: ${bvo.b2_seller_id }</p>
                            <p>경매 시작가: ${bvo.b2_startprice }</p>
                            <p>현재 최고가: ${bvo.b2_highestprice }</p>
                            <p>경매 마감일: ${bvo.b2_enddate }</p>
                         </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-two" role="tabpanel" aria-labelledby="nav-two-tab">
                    <!-- Tab 2 -->
                    <div class="row">
                        <div class="offset-xl-1 col-lg-9">
                        <p>${bvo.b2_content }</p>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-three" role="tabpanel" aria-labelledby="nav-three-tab">
                    <!-- Tab 3 -->
					<div class="row">
						<div class="offset-xl-1 col-lg-10">
							<div class="section-top-border text-center">
								<h3 class="mb-30">입찰내역</h3>
								<div class="progress-table-wrap" style="overflow:hidden">
									<div class="progress-table">
										<div class="table-head">
											<div class="country">입찰자 id</div>
											<div class="visit ml-30">입찰 가격</div>
											<div class="percentage">입찰일자</div>
										</div>
										<c:forEach var="blvo" items="${bidList }">
										<div class="table-row ml-100">
											<div class="country ml-25">${blvo.bid_m_id }</div>
											<div class="visit ml-5">
											<fmt:formatNumber value="${blvo.bid_price }" type="currency" currencySymbol="￦"/>
											</div>
											<div class="percentage ml-80">
											<fmt:formatDate value="${blvo.bid_date}" pattern="yyyy년 MM월 dd일"/>
											</div>
										</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
            </div>
        </div>
       <!-- button -->
		<div class="row">
			<div class="col-xl-12">
				<div class="more-btn text-center mt-15">
					<a href="booklist" class="border-btn border-btn2 more-btn2">목록으로</a>
				</div>
			</div>
		</div>
    </section>
    <!--Books info END -->
</main>

<!-- footer 연결  -->
<%@ include file="../include/footer.jsp"%>