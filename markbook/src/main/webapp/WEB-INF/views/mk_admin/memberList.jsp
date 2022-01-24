<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="header.jsp"%>

<div class="content">
	<div class="py-4 px-3 px-md-4">
		<div class="card mb-3 mb-md-4">

			<div class="card-body">
				<!-- Breadcrumb -->
				<nav class="d-none d-md-block" aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Users</a></li>
						<li class="breadcrumb-item active" aria-current="page">All
							Users</li>
					</ol>
				</nav>
				<!-- End Breadcrumb -->

				<div class="mb-3 mb-md-4 d-flex justify-content-between">
					<div class="h3 mb-0">Users</div>
				</div>


				<!-- Users -->
				<div class="table-responsive-xl">
					<table class="table text-nowrap mb-0">
						<thead>
							<tr>
								<th class="font-weight-semi-bold border-top-0 py-2">Name</th>
								<th class="font-weight-semi-bold border-top-0 py-2">ID</th>
								<th class="font-weight-semi-bold border-top-0 py-2">Phone</th>
								<th class="font-weight-semi-bold border-top-0 py-2">연체일</th>
								<th class="font-weight-semi-bold border-top-0 py-2">대출도서권수</th>
								<th class="font-weight-semi-bold border-top-0 py-2">Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="mvo" items="${memberList }">

								<tr>
									<td class="py-3">${mvo.m_name }</td>
									<td class="py-3">${mvo.m_email }</td>
									<td class="py-3">${mvo.m_phone }</td>
									<td class="py-3">${mvo.m_over }</td>
									<td class="py-3">${mvo.m_count }</td>
									<td class="py-3">
										<div class="position-relative">
											<!-- <i class="gd-eraser text-primary"></i> -->
											<!-- <i class="gd-trash"></i> -->
											<a class="link-dark d-inline-block"
												href="./memberUpdate?m_id=${mvo.m_id }"> <i
												class="gd-pencil icon-text"></i>
											</a>
										</div>
									</td>
								</tr>


							</c:forEach>
						</tbody>
					</table>
					<br>
					<br>
					<div class="card-footer d-block d-md-flex align-items-center d-print-none">
						<!-- <div class="d-flex mb-2 mb-md-0">Showing 1 to 8 of 24 Entries</div> -->

						<nav class="d-flex ml-md-auto d-print-none" aria-label="Pagination">
							<ul class="pagination justify-content-center font-weight-semi-bold">
								<li class="page-item">
								
							<!-- 이전 -->
							<c:if test="${pm.prev }">
								<li>
								<a class="page-link" href="memberList?pageStart=${pm.startPage-1 }" id="datatablePaginationPrev" class="page-link" aria-label="Previous">
								</a>
								</li>
							</c:if>

							<!-- 페이지 번호 -->
							<c:forEach begin="${pm.startPage }" end="${pm.endPage }" var="idx">
								<li ${pm.cri.pageStart == idx? 'class = page-item':'' }>
									<a href="memberList?pageStart=${idx }">${idx }</a>
								</li>
							</c:forEach>

							<!-- 다음 -->
							<c:if test="${pm.next && pm.endPage > 0 }">
								<li class="page-item">
								<a class="page-link active" href="./memberList?pageNum=${pm.endPage + 1}" aria-label="Next"> 
								<i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i>
								</a>
								</li>
							</c:if>
							
							</li>
							</ul>
						</nav>
					</div>
					</div>
				</div>
				<!-- End Users -->
			</div>
		</div>
	<%@ include file="footer.jsp"%>
</div>