<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%@ include file="header.jsp"%>


<div class="content">
	<div class="py-4 px-3 px-md-4">


		<div class="card">
			<div class="card-body">
				<div class="col-xl-12">
				
					<!-- Breadcrumb -->
                    	<nav class="d-none d-md-block" aria-label="breadcrumb">
                        	<ol class="breadcrumb">
                            	<li class="breadcrumb-item">
                                	<a href="#">Coupon</a>
                            	</li>
                            	<li class="breadcrumb-item active" aria-current="page">addcoupon</li>
                        	</ol>
                    	</nav>
                    <!-- End Breadcrumb -->
                    
					<div class="border-bottom pb-3 mb-6">
						<h5 class="font-weight-semi-bold mb-0">쿠폰 생성</h5>
						<div class="tab-content bg-lighter" id="pills-tabContent-2">
							<div class="tab-pane fade p-4 show active" id="pills-result-2"
								role="tabpanel" aria-labelledby="pills-result-tab-2">

								<form action="./couponlist" method="post" name="">
								
						
									<div class="form-group">
										<!-- <label for="exampleFormControlInput1">책이름</label> -->
										<strong class="d-block mb-1">쿠폰명</strong> <input type="text"
											class="form-control" id="b_name" name="b_name" placeholder="쿠폰명을 작성합니다 . *작성하신 쿠폰명은 고객에게 노출됩니다.">
									</div>
	                                 <div class="form-group">
										<!-- <label for="exampleFormControlSelect1">대출횟수</label> -->
										<strong class="d-block mb-1">쿠폰 형식</strong>
										<strong class="d-block mb-1"></strong> <select
											class="form-control" id="b_count" name="b_count">
											<option>고객 다운로드</option>
											<option>쿠폰생성</option>

										</select>
									</div>



								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>







<%@ include file="footer.jsp"%>
</html>