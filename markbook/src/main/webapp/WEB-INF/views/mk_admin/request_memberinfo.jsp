<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
<script type="text/javascript">

function close11() {
	self.close();
}
</script>
			<div class="binbox">
                  <table>
                  <tr>
                  <td>
                  <img class="avatar-xl rounded-circle mb-2 mr-4" src="${pageContext.request.contextPath }/resources/assets/img/gallery/ad.jpg" alt="Image Description"> 
                  </td>
                  <td>
                  <label>아이디 </label>
                  <input type="email" class="form-control"  aria-describedby="emailHelp" value="${mem.m_id}" readonly="readonly">
                  </td>
                  </tr>
                  </table>
                   <label>가입일</label>
                     <input type="email" class="form-control"  aria-describedby="emailHelp" value="${mem.m_regdate}" readonly="readonly">
                   <label>주소</label>
                     <input type="email" class="form-control"  aria-describedby="emailHelp" value="${mem.m_addr1} ${mem.m_addr2}" readonly="readonly">
                   <label>연락처</label>
                     <input type="email" class="form-control"  aria-describedby="emailHelp" value="${mem.m_phone}" readonly="readonly">

               <hr>


          <label style="text-align: center; "><b>요청목록</b></label>
<div style="overflow:auto; width:500px; height:200px;">

    <div class="tab-pane fade p-4 show active" id="pills-result-1" role="tabpanel" aria-labelledby="pills-result-tab-1">
                                            <table class="table bg-white">
                                                <thead>
                                                <tr>
                                                    <th class="font-weight-semi-bold border-top-0 py-2">No</th>
                                                    <th class="font-weight-semi-bold border-top-0 py-2">title</th>
                                                    <th class="font-weight-semi-bold border-top-0 py-2">Booktitle</th>
                                                    <th class="font-weight-semi-bold border-top-0 py-2">result</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                       <c:forEach items="${list}" var="list">
                                                <tr>
                                                    <td class="py-3">${list.r_num }</td>
                                                    <td class="py-3"> <a href="./request_detail?r_num=${list.r_num }&pgnum=1">${list.r_title }</a></td>
                                                    <td class="py-3">${list.r_name }</td>
                                                    <td>
                                                       <c:choose >
                                    		<c:when test="${list.r_result == 0}"> <span class="badge badge-pill badge-success" onclick="fun23(${list.r_num })" style="cursor:pointer;">신청중</span></c:when>
                                    		<c:when test="${list.r_result == 1 }"> <span class="badge badge-pill badge-info" onclick="fun23(${list.r_num })" style="cursor:pointer;">처리중</span></c:when>
                                    		<c:when test="${list.r_result == 2 }"> <span class="badge badge-pill badge-danger" onclick="fun23(${list.r_num })" style="cursor:pointer;">취소됨</span></c:when>
                                    		<c:when test="${list.r_result == 3 }"> <span class="badge badge-pill badge-light" onclick="fun23(${list.r_num })" style="cursor:pointer;">완료됨</span></c:when>
                                    </c:choose>
                                    </td>
                                                </tr>

                                          
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                        </div>
                                        <hr>
                                                <button class="btn btn-soft-warning mb-3 mr-3" style="margin-left:220px; " onclick="close11()">닫기</button>
             
                                                
    </div>




</body>
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/icon/favicon.png">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/grains-master/public/img/favicon.ico">


    <!-- DEMO CHARTS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/grains-master/public/demo/chartist.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/grains-master/public/demo/chartist-plugin-tooltip.css">

    <!-- Template -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/grains-master/public/graindashboard/css/graindashboard.css">
</html>