<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%@ include file="header.jsp"%>
<script type="text/javascript">
function go() {
	location.href="./request_list?pgnum=${pgnum}&result=${result}";
}


</script>



<div class="content">
	<div class="py-4 px-3 px-md-4">


		<div class="card">
			<div class="card-body">
				<div class="col-xl-12">
					<div class="border-bottom pb-3 mb-6">
					<table>
					<tr>
			<td>
						<h2 class="h4" style="text-align: center;">
							요청게시판 
        </h2>
			</td>
			<td >

        </td>
        </tr>
        </table>
<!-- ㅇㅇㅇ -->
<div class="tab-content bg-lighter" id="pills-tabContent-6">
                                        <div class="tab-pane fade p-4 show active" id="pills-result-6" role="tabpanel" aria-labelledby="pills-result-tab-6">
                                            <table class="table table-bordered">

                                                <tbody>
                                                <tr>
                                                    <th scope="row">제목</th>
                                                    <td>${page.r_title}</td>

                                                </tr>
                                                <tr>
                                                    <th scope="row">진행상태</th>
                                                    <td>
                                              <c:choose >
                                    		<c:when test="${page.r_result == 0}"> <span class="btn btn-success mb-3 mr-3" style=" height:23px; line-height: 40%;">신청중</span></c:when>
                                    		<c:when test="${page.r_result  == 1 }"> <span class="btn btn-info mb-3 mr-3" style=" height:23px; line-height: 40%;">처리중</span></c:when>
                                    		<c:when test="${page.r_result  == 2 }"> <span class="btn btn-danger mb-3 mr-3" style=" height:23px; line-height: 40%;">취소됨</span></c:when>
                                    		<c:when test="${page.r_result  == 3 }"> <span class="btn btn-light mb-3 mr-3" style=" height:23px; line-height: 40%;">완료</span></c:when>
                                             </c:choose>
                                             </td>

                                                </tr>
                                                <tr>
                                                    <th scope="row">책이름</th>
                                                    <td>${page.r_name}</td>

                                                </tr>
                                                <tr>
                                                    <th scope="row">작가명</th>
                                                    <td>${page.r_writer}</td>

                                                </tr>
                                                <tr>
                                                    <th scope="row">ISBN</th>
                                                    <td>${page.r_ISBN}</td>

                                                </tr>
                                                <tr>
                                                    <th scope="row">출판사</th>
                                                    <td>${page.r_publisher}</td>

                                                </tr>
                                                <tr>
                                                    <th scope="row">가격</th>
                                                    <td>${page.r_price}</td>

                                                </tr>
                                                <tr>
                                                    <td colspan="2"><b>사유</b><br>${page.r_content }</td>
                               

                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>

							</div>
						</div>
					</div>
<button type="button" class="btn btn-soft-primary mb-3 mr-3" onclick="go();" id="btn3" style="text-align: center;">목록</button>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>

</html>
