<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<style>

.binbox{
width: 90%;
margin: 5%;
}

 textarea {
    width: 100%;
    height: 6.25em;
    border: none;
    resize: none;
  }
  
  button{
  margin: 30%;
  
  
  }
</style>



			<div class="binbox">
                  <form action="" method="post" name="" >
                  <label>신청한 책 </label>
                  <input type="email" class="form-control"  aria-describedby="emailHelp" value="${page.r_num}. ${page.r_name}" readonly="readonly">
                   <label>진행사항</label>
   <select name="r_result"  class="form-control" >
                  <option value="0"  ${page.r_result =="0"?'selected=selected':''}>신청중</option>
               <option value="1" ${page.r_result =="1"?'selected=selected':''}> 처리중</option>
               <option value="2" ${page.r_result =="2"?'selected=selected':''}> 취소</option>
               <option value="3" ${page.r_result =="3"?'selected=selected':''}> 완료</option>
               </select>
    
    상세
                                         <c:choose >
                <c:when test="${empty page.r_admin_comment}"> <textarea rows="" cols="" name="r_admin_comment" placeholder="진행사항을 입력하세요."></textarea></c:when>
        		<c:when test="${not empty page.r_admin_comment }"> <textarea rows="" cols="" name="r_admin_comment">${page.r_admin_comment}</textarea></c:when>


                                    </c:choose>
               <hr>
    
                                                <button type="submit" class="btn btn-soft-warning mb-3 mr-3" style="margin-left:220px; ">저장</button>
             
                                                
                      
</form>
    </div>







<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/icon/favicon.png">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/grains-master/public/img/favicon.ico">


    <!-- DEMO CHARTS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/grains-master/public/demo/chartist.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/grains-master/public/demo/chartist-plugin-tooltip.css">

    <!-- Template -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/grains-master/public/graindashboard/css/graindashboard.css">
</html>