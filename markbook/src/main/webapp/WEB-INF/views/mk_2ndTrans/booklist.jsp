<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header 연결  -->
<%@ include file="../include/header.jsp"%>
<!-- css 연결  -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/mk_2ndTrans.css">
<!-- 주소설정  -->
<c:set var="path" value="${pageContext.request.contextPath}/mk_2ndTrans/"/>

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

	<div class="listing-area pt-50 pb-50">
		<div class="container">
			<div class="row">
				<!-- Left content -->
				<div class="col-xl-4 col-lg-4 col-md-6">
					<!-- Category Listing start -->
					<div class="category-listing mb-50">
						<!-- single one -->
						<div class="single-listing ml-100">
							<!-- select-Categories  -->
							<div class="select-Categories pb-30">
								<div class="small-tittle mb-20">
									<h4>Filter by Category</h4>
								</div>
								<label class="container">문학 
									<input type="checkbox" name="b2_category" id="b2_category" value="문학"> 
									<span class="checkmark" ></span>
								</label>
								<label class="container">비문학 
									<input type="checkbox" name="b2_category" id="b2_category" value="비문학"> 
									<span class="checkmark"></span>
								</label> 
								<label class="container">자기계발서 
									<input type="checkbox" name="b2_category" id="b2_category" value="자기계발서"> 
									<span class="checkmark"></span>
								</label> 
								<label class="container">수험서 
									<input type="checkbox" name="b2_category" id="b2_category" value="수험서"> 
									<span class="checkmark"></span>
								</label> 
								<label class="container">잡지 
									<input type="checkbox" name="b2_category" id="b2_category" value="잡지"> 
									<span class="checkmark"></span>
								</label>
								<label class="container">기타 
									<input type="checkbox" name="b2_category" id="b2_category" value="기타"> 
									<span class="checkmark"></span>
								</label>
							</div>
							<!-- select-Categories End -->
							<!-- select-Categories start -->
							<div class="select-Categories pb-50">
								<div class="small-tittle mb-20">
									<h4>Filter by BookStatus</h4>
								</div>
								<label class="container">최상 - 거의 새책 
									<input type="checkbox" name="b2_bookstatus" id="b2_bookstatus" value="최상"> 
									<span class="checkmark"></span>
								</label>
							    <label class="container">상 
									<input type="checkbox" name="b2_bookstatus" id="b2_bookstatus" value="상"> 
									<span class="checkmark"></span>
								</label>
								<label class="container">중 
									<input type="checkbox" name="b2_bookstatus" id="b2_bookstatus" value="중"> 
									<span class="checkmark"></span>
								</label>
								<label class="container">하 
									<input type="checkbox" name="b2_bookstatus" id="b2_bookstatus" value="하"> 
									<span class="checkmark"></span>
								</label>
							    <label class="container">최하 - 거의 폐지
									<input type="checkbox" name="b2_bookstatus" id="b2_bookstatus" value="최하"> 
									<span class="checkmark"></span>
								</label>
							</div>
							<!-- select-Categories End -->
							<!-- select-Categories start -->
							<div class="select-Categories pb-30">
								<div class="small-tittle mb-15">
									<h4>Filter by SalesStatus</h4>
								</div>
							    <label class="container">경매중 
									<input type="checkbox" name="b2_sellstatus" id="b2_sellstatus" value="0"> 
									<span class="checkmark"></span>
								</label>
								<label class="container">판매완료 
									<input type="checkbox" name="b2_sellstatus" id="b2_sellstatus" value="1"> 
									<span class="checkmark"></span>
								</label>
							</div>
							<!-- select-Categories End -->
						<button type="button" 
								class="button button-contactForm boxed-btn" onclick="Search();">검색하기</button>
						</div>
					</div>
					<!-- Category Listing End -->
				</div>
				<!--  Right content -->
				<div class="col-xl-8 col-lg-8 col-md-6">
					<div class="row justify-content-end">
						<div class="col-xl-4">
							<div class="product_page_tittle">
								<div class="short_by">
									<select name="#" id="product_short_list" style="display: none;">
										<option>낮은가격순</option>
										<option>높은가격순</option>
										<option>과거등록순</option>
									</select>
									<div class="nice-select" tabindex="0">
										<span class="current">조회방법</span>
										<ul class="list">
											<li data-value="조회방법" class="option selected">조회방법</li>
											<li data-value="낮은가격순" class="option" onclick="location.href='${path}search?option=lowprice';">낮은가격순</li>
											<li data-value="높은가격순" class="option" onclick="location.href='${path}search?option=highprice';">높은가격순</li>
											<li data-value="과거등록순" class="option" onclick="location.href='${path}search?option=date';">과거등록순</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="best-selling p-0">
						<div class="row">
							<c:forEach var="bvo" items="${bookList }">
								<div class="col-xxl-3 col-xl-4 col-lg-4 col-md-12 col-sm-6">
									<div class="properties pb-30">
										<div class="properties-card">
											<div class="properties-img" id="listimg">
												<a href="${path}bookinfo?b2_num=${bvo.b2_num }&pageNum=${pm.cri.pageNum }">
													<img src="${pageContext.request.contextPath}/resources/upload/${bvo.b2_image}"
														 alt="">
												</a>
											</div>
											<div class="properties-caption properties-caption2 text-center">
												<h3>
													<a href="${path}bookinfo?b2_num=${bvo.b2_num }&pageNum=${pm.cri.pageNum }">${bvo.b2_title }</a>
												</h3>
												<p>${bvo.b2_writer }</p>
												<div class="properties-footer">
													<div class="price">
														<a href="${path}bookinfo?b2_num=${bvo.b2_num }&pageNum=${pm.cri.pageNum }">														
															<span> ${bvo.b2_highestprice } 원</span>
														</a>
														<p>${bvo.b2_startdate }</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                            	<!-- 이전  -->
                                <c:if test="${pm.prev }">
	                                <li class="page-item">
	                                    <a href="booklist?pageNum=${pm.startPage-1 }" class="page-link">
	                                        <i class="ti-angle-left"></i>
	                                    </a>
	                                </li>
                                </c:if>
                                <!-- 페이지 번호  -->
                                <c:forEach begin="${pm.startPage }" end="${pm.endPage }" var="idx">
                                	<li class="page-item <c:out value="${pm.cri.pageNum == idx? 'class = active ':''}"/>" > 
				                     	<a class="page-link" href="booklist?pageNum=${idx }">${idx }</a>
                                	</li>
                                </c:forEach>
                                <!--다음  -->
                                <c:if test="${pm.next && pm.endPage > 0 }">
	                                <li class="page-item">
	                                    <a href="booklist?pageNum=${pm.endPage + 1}" class="page-link" aria-label="Next">
	                                        <i class="ti-angle-right"></i>
	                                    </a>
	                                </li>
                                </c:if>
                            </ul>
                        </nav>
						<!-- button -->
						<div class="row">
							<div class="col-xl-12">
								<div class="more-btn text-center mt-50">
									<a href="bookregister" class="border-btn border-btn2 more-btn2">판매등록</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>

<!-- footer 등록  -->
<%@ include file="../include/footer.jsp"%>

<!-- 자바 스크립트 파일 연결 -->
<script
	src="${pageContext.request.contextPath }/resources/assets/js/mk_2ndTrans/list.js"></script>