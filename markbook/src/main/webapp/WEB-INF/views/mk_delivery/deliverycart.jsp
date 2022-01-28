<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- HEADER 연결  -->	
<%@ include file="../include/header.jsp" %>

<!-- 오늘날짜 변수저장  -->
<jsp:useBean id="now" class="java.util.Date" />
<c:set var="due" value="<%=new Date(new Date().getTime() + 1000 * 60 * 60 * 24 * 21)%>"/>
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
<fmt:formatDate value="${due}" pattern="yyyy-MM-dd" var="dueday" />

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
					<table class="table text-center">
						<thead>
							<tr>
								<th scope="col">Product</th>
								<th scope="col">BorrowDate</th>
								<th scope="col">DueDate</th>
								<th scope="col">DeliveryPrice</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<div class="media">
										<div class="d-flex">
											<img
												src="${pageContext.request.contextPath}/resources/upload/${deliveryInfo.b_image}"
												alt="">
										</div>
										<div class="media-body">
											<p>${deliveryInfo.b_name }</p>
										</div>
									</div>
								</td>
								<td>
									<h5>${deliveryInfo.bor_date }</h5>
								</td>
								<td>
									<h5>${deliveryInfo.bor_redate }</h5>
								</td>
								<td>
									<h5>4000원</h5>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
               <div class="checkout_btn_inner text-center">
                   <a class="btn" href="${pageContext.request.contextPath }/mk_delivery/deliverycheckout">Checkout</a>
               </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->
</main>
	

<%@ include file="../include/footer.jsp"%>