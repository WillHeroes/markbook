<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header.jsp" %>

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
                                    <h3>${book.b_name}</h3>
                                    <p>By ${book.b_writer }</p>
                                    <div class="price">
                                        <span>${book.b_publisher} </span>
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
                                <a class="nav-link active" id="nav-one-tab" data-bs-toggle="tab" href="#nav-one" role="tab" aria-controls="nav-one" aria-selected="true">정보</a>
                                <a class="nav-link" id="nav-two-tab" data-bs-toggle="tab" href="#nav-two" role="tab" aria-controls="nav-two" aria-selected="false">review</a>
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
                            <p>카테고리: ${book.b_category }</p>
                            <p>작가: ${book.b_writer }</p>
                            <p>출판사: ${book.b_publisher }</p>
                            <p>책내용: ${book.b_content }</p>

                         </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-two" role="tabpanel" aria-labelledby="nav-two-tab">
                    <!-- Tab 2 -->
                    <div class="row">
                        <div class="offset-xl-1 col-lg-9">
                        <h2>리뷰</h2>
                       <c:url var="reviewsPath" value="/reviews" />
							<form:form modelAttribute="review" action="${ reviewsPath }" method="post">
							    
							    <form:textarea path="text" cssClass="form-control" rows="5" />
							    <form:hidden path="b_num" />
							    <form:hidden path="m_id" />
							    
							    <button class="btn btn-block btn-primary" type="submit">리뷰 등록</button>
							</form:form>
                        
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-three" role="tabpanel" aria-labelledby="nav-three-tab">
                    <!-- Tab 3 -->
					
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


<%@ include file="../include/footer.jsp" %>