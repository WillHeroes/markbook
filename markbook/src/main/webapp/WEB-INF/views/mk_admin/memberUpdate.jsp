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
                            <li class="breadcrumb-item active" aria-current="page">User Edit</li>
                        </ol>
                    </nav>
                    <!-- End Breadcrumb -->

                    <div class="mb-3 mb-md-4 d-flex justify-content-between">
                        <div class="h3 mb-0">USER EDIT</div>
                    </div>


                    <!-- Form -->
                    <div>
                        <form>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="name">이름</label>
                                    <input type="text" class="form-control" id="m_name" name="m_name" value="${mvo.m_name }">
                                </div>
                                <div class="form-group col-12 col-md-6">
                                    <label for="id">ID</label>
                                    <input type="text" class="form-control" id="m_id" name="m_id" value="${mvo.m_id }">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="addr1">주소</label>
                                    <input type="text" class="form-control" id="m_addr1" name="m_addr1" value="${mvo.m_addr1 }">
                                </div>
                                <div class="form-group col-12 col-md-6">
                                    <label for="addr2">상세주소</label>
                                    <input type="text" class="form-control" id="m_addr2" name="m_addr2" value="${mvo.m_addr2 }">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="email">Email</label>
                                    <input type="text" class="form-control" id="m_email" name="m_email" value="${mvo.m_email }">
                                </div>
                                <div class="form-group col-12 col-md-6">
                                    <label for="phone">휴대폰번호</label>
                                    <input type="text" class="form-control" id="m_phone" name="m_phone" value="${mvo.m_phone }">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-12 col-md-6">
                                    <label for="idnum1">주민등록번호</label>
                                    <input type="text" class="form-control" id="m_idnum1" name="m_idnum1" value="${mvo.m_idnum1 }" style="width: 250px"> 
                                </div>
                                <div>
                                <label for="idnum2">주민등록번호</label>
                                    <input type="text" class="form-control" id="m_idnum2" name="m_idnum2" value="${mvo.m_idnum2 }" style="width: 250px">
                                </div>
                            </div>
                          
                            <button type="submit" class="btn btn-secondary active" style="float: right;">
                            	<span class="align-middle">수정하기</span> 
                            	<i class="gd-shopping-cart-full icon-text align-middle ml-3"></i>
                            </button>
                        </form>
                    </div>
                    <!-- End Form -->
                </div>
            </div>


        </div>

       
    
    <%@ include file="footer.jsp"%>