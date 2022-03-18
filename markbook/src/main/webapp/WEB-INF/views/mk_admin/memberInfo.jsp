<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<%@ include file="header.jsp"%>


<div class="content">
        <div class="py-4 px-3 px-md-4">
            <div class="card mb-3 mb-md-4">

                <div class="card-body">
                    <!-- Breadcrumb -->
                    <nav class="d-none d-md-block" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">Users</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">User Info</li>
                        </ol>
                    </nav>
                    <!-- End Breadcrumb -->

                    <div class="mb-3 mb-md-4 d-flex justify-content-between">
                        <div class="h3 mb-0">USER INFO</div>
                    </div>

                    <!-- Form -->
                    <div>
                        <form>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="m_name">이름</label>
                                    <input type="text" class="form-control" value="${mvo.m_name }">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="m_addr1">주소</label>
                                    <input type="text" class="form-control" value="${mvo.m_addr1 }">
                                </div>
                                <div class="form-group col-12 col-md-6">
                                    <label for="m_addr2">상세주소</label>
                                    <input type="text" class="form-control" value="${mvo.m_addr2 }">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="m_email">이메일</label>
                                    <input type="text" class="form-control" value="${mvo.m_email }">
                                </div>
                                <div class="form-group col-12 col-md-6">
                                    <label for="m_phone">휴대폰번호</label>
                                    <input type="text" class="form-control" value="${mvo.m_phone }">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="m_idnum1">주민등록번호</label>
                                    <input type="text" class="form-control" value="${mvo.m_idnum1 }">
                                </div>
                                <div class="form-group col-12 col-md-6">
                                    <label for="m_idnum2">주민등록번호</label>
                                    <input type="text" class="form-control" value="${mvo.m_idnum2 }">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="m_image">이미지</label>
                                    <img
											src="${pageContext.request.contextPath }"
											alt="" style="width: 70px; height: 90px;">
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- End Form -->
                </div>
            </div>


        </div>

       
    
    <%@ include file="footer.jsp"%>