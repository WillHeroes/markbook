<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>

<div class="content">
	<div class="py-4 px-3 px-md-4">


		<div class="card">
			<div class="card-body">
				<div class="col-xl-12">
					<div class="border-bottom pb-3 mb-6">
						<div class="tab-content bg-lighter" id="pills-tabContent-2">
							<div class="tab-pane fade p-4 show active" id="pills-result-2"
								role="tabpanel" aria-labelledby="pills-result-tab-2">

								<table>
									<thead>
										<tr>
											<th class="font-weight-semi-bold border-top-0 py-2">${bvo.b_name }</th>
										</tr>
									</thead>



								</table>
								<form action="" method="post" id="bookDetail" name="bookDetail">

										<div class="form-group">
											<img
											src="${pageContext.request.contextPath }/resources/upload/bookImage/${bvo.b_image}"
											alt="" style="width: 70px; height: 90px;">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">책 내용</label> <input
												type="text" class="form-control"
												id="b_content" name="b_content" value="${bvo.b_content }">
										</div>
									</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>