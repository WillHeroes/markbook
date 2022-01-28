<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- header 연결  -->	
<%@ include file="../include/header.jsp" %>

<main>
    <!-- Hero area Start-->
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="slider-area">
                    <div class="slider-height2 slider-bg5 d-flex align-items-center justify-content-center">
                        <div class="hero-caption hero-caption2">
                            <h2>Delivery Check Out</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <!--  Hero area End -->
    <!--? Checkout Area Start-->
    <section class="checkout_area section-padding">
        <div class="container">
            <div class="billing_details">
                <div class="row">
                    <div class="col-lg-8">
                        <h2>Details</h2>
                        <div class="col-md-12 form-group p_star">
                        </div>
                        <form action="" method="post" id="bookcheckout" name="bookcheckout">
                            <input type="hidden" value="${memberInfo.m_id }" name="order_id">
                           	<div class="creat_account">
                                    <h6>Recipient</h6>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" placeholder="Name" 
                                	   id="order_name" name="order_name" value="${memberInfo.m_name }">
                            </div>
                            <div class="creat_account">
                                    <h6>Phone number</h6>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" placeholder="Phone number" 
                                		id="order_phone" name="order_phone" value="${memberInfo.m_phone }">
                            </div>
                            <div class="creat_account">
                                    <h6>Address</h6>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" placeholder="address1" 
                                id="order_addr1" name="order_addr1" value="${memberInfo.m_addr1 }">
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" placeholder="address2"  
                                id="order_addr2" name="order_addr2" value="${memberInfo.m_addr2 }">
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <h2>Shipping Details</h2>
                                </div>
                        		<div class="col-md-12 form-group p_star">
                        		</div>
                        		<div class="creat_account">
                                    <h6>Shipping Request</h6>
                            	</div>
                                <textarea class="form-control" rows="1" name="order_msg" id="order_msg"></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-4">
                        <div class="order_box">
                            <h2>Your Order</h2>
                            <ul class="list">
                                <li>
                                    <a href="#">Product<span>Ship Price</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#"> ${OrderInfo.b2_title } 
                                        <span class="last">₩ ${OrderInfo.b2_highestprice }</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="list list_2">
                                <li>
                                    <a href="#">Total<span>₩ ${OrderInfo.b2_highestprice }</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="payment_item active mt-5 mb-5 text-center">
                                <p> 결제는 오직 무통장 입금만 가능합니다.<br> 
                                    국민은행 이소정 224224-22-4353333<br>
                    			    영업방침 상 환불, 교환 절대 불가합니다.</p>
                            </div>
                            <button class="btn w-100">Proceed to Checkout </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Checkout Area -->

</main>

<!-- footer 연결  -->
<%@ include file="../include/footer.jsp"%>

<!-- 자바 스크립트 파일 연결 -->
<script
	src="${pageContext.request.contextPath }/resources/assets/js/mk_2ndTrans/checkout.js"></script>