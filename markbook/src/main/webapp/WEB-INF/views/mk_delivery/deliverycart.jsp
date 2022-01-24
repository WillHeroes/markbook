<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- HEADER 연결  -->	
<%@ include file="../include/header.jsp" %>

<!-- 오늘날짜 변수저장  -->
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />

<main>
    <!-- Hero area Start-->
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="slider-area">
                    <div class="slider-height2 slider-bg5 d-flex align-items-center justify-content-center">
                        <div class="hero-caption hero-caption2">
                            <h2>Delivery Cart</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <!--  Hero area End -->
    <!--================Cart Area =================-->
    <section class="cart_area section-padding">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Product</th>
                                <th scope="col">StartPrice</th>
                                <th scope="col">CurrentPrice</th>
                                <th scope="col">Bid-EndDate</th>
                                <th scope="col">Payment progress</th>
                            </tr>
                        </thead>
                        <c:forEach var="cvo" items="${cartList }">
                        <tbody>
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="d-flex">
                                            <img src="${pageContext.request.contextPath}/resources/upload/${cvo.b2_image}" alt="">
                                        </div>
                                        <div class="media-body">
                                            <p>${cvo.b2_title }</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <h5>${cvo.b2_startprice }</h5>
                                </td>
                                <td>
                                    <h5>${cvo.b2_highestprice }</h5>
                                </td>
                                <td>
                                	<h5>${cvo.b2_enddate }</h5>
                                </td>
                                <c:choose>
                                	<c:when test="${cvo.b2_enddate < today }">
                                		<td>
                                     	<a class="btn checkout_btn" href="/markbook/mk_2ndTrans/bookcheckout?b2_num=${cvo.b2_num }">checkout</a>
                                		</td>
                                	</c:when>
                                	<c:otherwise>
                     					<td>
                                     		<h5>경매 마감 전</h5>
                                		</td>           	
                                	</c:otherwise>
                                </c:choose>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="checkout_btn_inner float-right">
                        <a class="btn" href="/markbook/mk_2ndTrans/booklist">Continue Shopping</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->
</main>
	

<%@ include file="../include/footer.jsp"%>