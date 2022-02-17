<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script type="text/javascript">

function fun23(num){

    var pop = window.open("./bookDetail?b_num="+num,"신청결과","width=600,height=600, scrollbars=yes, resizable=yes"); 
    pop.focus();
    
    }

</script>




<%@ include file="header.jsp"%>

<c:set var="path" value="${pageContext.request.contextPath}/mk_admin/"/>

<div class="content">
	<div class="py-4 px-3 px-md-4">

		<div class="row">
			<div class="col-12">
				<div class="card mb-3 mb-md-4">
					<div class="card-header">
						<!-- Breadcrumb -->
						<nav class="d-none d-md-block" aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Books</a></li>
								<li class="breadcrumb-item active" aria-current="page">book
									list</li>
							</ol>
						</nav>
						<!-- End Breadcrumb -->

						<h5 class="font-weight-semi-bold mb-0">BOOK LIST</h5>
					</div>

					<div class="card-body pt-0">
						<div class="table-responsive-xl">
							<table class="table text-nowrap mb-0">
								<thead>
									<tr>
										<th class="font-weight-semi-bold border-top-0 py-2">No</th>
										<th class="font-weight-semi-bold border-top-0 py-2">Name</th>
										<th class="font-weight-semi-bold border-top-0 py-2">Category</th>
										<th class="font-weight-semi-bold border-top-0 py-2">Writer</th>
										<th class="font-weight-semi-bold border-top-0 py-2">Rent</th>
										<th class="font-weight-semi-bold border-top-0 py-2">Edit
											/ Delete</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="bvo" items="${bookList }">
									<input type="hidden" value="${bvo.b_able }" name="b_able">


										<tr>
											<td>
												<div class="book-img">
													<img
														src="${pageContext.request.contextPath }/resources/upload/bookImage/${bvo.b_image}"
														alt="" style="width: 70px; height: 90px;">
												</div>
											</td>
											<td><a href="#" onclick="fun23(${bvo.b_num })">${bvo.b_name }</a>
											</td>
											<td class="py-3">${bvo.b_category }</td>
											<td class="py-3">${bvo.b_writer }</td>
											<td class="py-3">
												<!-- <span class="badge badge-pill badge-warning">OK</span> -->
												<c:choose>
													<c:when test="${bvo.b_able == 0}">
														<span class="badge badge-pill badge-success">가능</span>
													</c:when>
													<c:when test="${bvo.b_able == 1}">
														<span class="badge badge-pill badge-info">불가</span>
													</c:when>
												</c:choose>
											</td>
											<td class="py-3">
												<div class="position-relative">
													<!-- <i class="gd-eraser text-primary"></i> -->
													<!-- <i class="gd-trash"></i> -->
													<a class="link-dark d-inline-block"
														href="./bookUpdate?b_num=${bvo.b_num }"> <i
														class="gd-pencil icon-text"></i>
													</a> / <a class="link-dark d-inline-block"
														href="./bookDelete?b_num=${bvo.b_num }"> <i
														class="gd-trash icon-text"></i>
													</a>
												</div>
											</td>
										</tr>


									</c:forEach>
								</tbody>
							</table>


							<div class="card-footer">
								<nav aria-label="Contacts Page Navigation">
									<ul class="pagination justify-content-center m-0">
										<c:if test="${pageMaker.prev}">
											<li class="page-item"><a class="page-link"
												href="${path}/listPaging?page=${pageMaker.startPage - 1}">이전</a></li>
										</c:if>
										<c:forEach begin="${pageMaker.startPage}"
											end="${pageMaker.endPage}" var="idx">
											<li class="page-item"
												<c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>>
												<a class="page-link"
												href="${path}/listPaging?page=${idx}">${idx}</a>
											</li>
										</c:forEach>
										<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
											<li class="page-item"><a class="page-link"
												href="${path}/listPaging?page=${pageMaker.endPage + 1}">다음</a></li>
										</c:if>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>





		<%@ include file="footer.jsp"%>
	</div>
</div>