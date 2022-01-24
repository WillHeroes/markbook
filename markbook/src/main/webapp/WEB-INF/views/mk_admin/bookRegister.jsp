<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>

<div class="content">
	<div class="py-4 px-3 px-md-4">


		<div class="card">
			<div class="card-body">
				<div class="col-xl-12">

					<!-- Breadcrumb -->
					<nav class="d-none d-md-block" aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Books</a></li>
							<li class="breadcrumb-item active" aria-current="page">book
								register</li>
						</ol>
					</nav>
					<!-- End Breadcrumb -->

					<div class="border-bottom pb-3 mb-6">
						<h5 class="font-weight-semi-bold mb-0">BOOK REGISTER</h5>
						<div class="tab-content bg-lighter" id="pills-tabContent-2">
							<div class="tab-pane fade p-4 show active" id="pills-result-2"
								role="tabpanel" aria-labelledby="pills-result-tab-2">

								<form action="./bookRegister" method="post" name="">
									<input type="hidden" value="0" name="b_able">
									<input type="hidden" value="${b_num }" name="b_num">
									<div class="form-group">
										<!-- <label for="exampleFormControlInput1">책이름</label> -->
										<strong class="d-block mb-1">책이름</strong> <input type="text"
											class="form-control" id="b_name" name="b_name"
											placeholder="책이름">
									</div>

									<!-- <div class="alert alert-primary alert-left-bordered border-primary alert-dismissible d-flex p-3 p-md-4 mb-0 fade show" role="alert">
    									<i class="gd-info-alt icon-text mr-2 mt-1" style="margin-top: 2px;"></i> -->

									<div>
										<strong class="d-block mb-1">카테고리</strong>
										<!-- <form class="mb-3"> -->
										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes1" name="b_category" value="문학">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes1" data-icon="">문학</label>
										</div>

										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes2" name="b_category" value="비문학">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes2" data-icon="">비문학</label>
										</div>
										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes3" name="b_category" value="자기계발">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes3" data-icon="">자기계발</label>
										</div>
										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes4" name="b_category" value="수험서">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes4" data-icon="">수험서</label>
										</div>
										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes5" name="b_category" value="잡지">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes5" data-icon="">잡지</label>
										</div>
										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes6" name="b_category" value="기타">
											<label class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes6" data-icon="">기타</label>
										</div>

										<!-- </form> -->
									</div>

									<div class="form-group">
										<!-- <label for="exampleFormControlFile1">이미지</label> -->
										<strong class="d-block mb-1">이미지</strong> 
										<input type="file" id="b_image" name="b_image" class="" >
									</div>


									<div class="form-group">
										<!-- <label for="exampleFormControlTextarea1">책내용</label> -->
										<strong class="d-block mb-1">책내용</strong>
										<textarea class="form-control" id="b_content" name="b_content"
											rows="2" placeholder="책내용"></textarea>
									</div>
									<div class="form-group">
										<!-- <label for="exampleFormControlTextarea1">작가</label> -->
										<strong class="d-block mb-1">작가</strong>
										<textarea class="form-control" id="b_writer" name="b_writer"
											rows="1" placeholder="작가"></textarea>
									</div>
									<div class="form-group">
										<strong class="d-block mb-1">출판사</strong>
										<textarea class="form-control" id="b_publisher"
											name="b_publisher" rows="1" placeholder="출판사"></textarea>
									</div>

									<div class="form-group">
										<strong class="d-block mb-1">대출횟수</strong>
										<textarea class="form-control" id="b_count"
											name="b_count" rows="1"></textarea>
									</div>
									
									<div class="form-group">
										<strong class="d-block mb-1">현재수량</strong>
										<textarea class="form-control" id="b_amount"
											name="b_amount" rows="1"></textarea>
									</div>

									<!-- <div class="form-group">
										<strong class="d-block mb-1">대출횟수</strong> <select
											class="form-control" id="b_count" name="b_count">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div> -->
								
									<div>
										<strong class="d-block mb-1">대출여부</strong>

										<!-- <select class="form-control" id="b_able" name="b_able">
                                        		<option>대출여부</option>
                                        		<option>가능</option>
                                        		<option>불가</option>
                                       	</select> -->

										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes8" name="b_able" value="가능"> <label
												class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes8" data-icon="">가능</label>
										</div>

										<div class="form-check position-relative mb-2">
											<input type="radio" class="form-check-input d-none"
												id="customRadioboxes9" name="b_able" value="불가"> <label
												class="radio radio-xxs form-check-label ml-1"
												for="customRadioboxes9" data-icon="">불가</label>
										</div>

									</div>

									<button type="submit" class="btn btn-secondary active" style="text-align: center;" 
											onclick="location.href='./bookList';">
										<span class="align-middle">등록하기</span> <i
											class="gd-shopping-cart-full icon-text align-middle ml-3"></i>
									</button>


								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</div>
