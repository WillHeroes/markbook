<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp" %>

<!-- css -->

    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/requestBoard.css">


<script type="text/javascript">
    var path = "${pageContext.request.contextPath }";
 
    $(function(){
        $("#resTb tbody").append($("#resInfoTr").html());


    });
    
    function Popup(){
        var pop = window.open("./book_popup","책 검색","width=1100,height=900, scrollbars=yes, resizable=yes"); 
//         alert(document.RForm.booook.value);
        pop.focus();
    }


        
</script>

<!-- ================ start banner area ================= -->
<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="slider-area">
						<div class="slider-height2 slider-bg5 d-flex align-items-center justify-content-center">
							<div class="hero-caption hero-caption2">
								<h2>Apply for the desired book</h2>
							</div>
						</div>
					</div>
				</div>
			</div> 
		</div>
<!-- ================ end banner area ================= -->

<!-- ================ start button area ================= -->
<div class="box">

<div class="comment-form">
<div class="middle">


                        
<a href="./notice" class="genric-btn primary-border e-large" style="width:45%; ">희망도서 신청 안내</a>

<a href="#" class="genric-btn primary e-large" style="width:45%; ">희망도서 신청</a>
</div>
<br>
<!-- ================ end button area ================= -->

<!-- <div class="comment-form"> -->
 <h2>희망도서 신청</h2>
 <form class="form-contact comment_form" action="./add" id="commentForm" method="post" name="RForm" onsubmit="return check()">
 <input type="hidden" value="${r_num} " name="r_num">
  <input type="hidden" value="0" name="r_result">
   <div class="col-sm-6">
    <div class="form-group">
    <br>
    <label>제목</label>
    <input class="form-control" type="text" name="r_title" placeholder="제목">
    </div>
    </div>
  
 <div class="col-sm-10" >
  <div class="form-group">
      <label>도서명</label>
<table>
<tr>
<td>
   <input class="form-control" id="r_name"name="r_name" type="text" placeholder="책 이름" onclick="Popup()" readonly="readonly">
   </td>
   <td>
<button type="button" class="genric-btn primary-border" onclick="Popup()" value="0" name="booook">책 검색</button>
</td>
</tr>
</table>
 </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
      <label>저자</label>
   <input class="form-control" id="r_writer" name="r_writer" placeholder="작가이름" readonly="readonly">
 </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
      <label>ISBN</label>
   <input class="form-control" id="r_ISBN" name="r_ISBN" placeholder="ISBN" readonly="readonly">
 </div>
</div>

<div class="col-sm-6">
  <div class="form-group">
      <label>출판사</label>
   <input class="form-control" id="r_publisher" name="r_publisher" placeholder="출판사" readonly="readonly">
 </div>
</div>
 

<div class="col-sm-6">
  <div class="form-group">
      <label>가격</label>
   <input class="form-control" id="r_price" name="r_price" placeholder="가격" readonly="readonly">
 </div>
</div>

  <div class="row">
   <div class="col-12">
    <div class="form-group">
     <textarea class="form-control w-100" name="r_content" id="comment" cols="30" rows="9" placeholder="Write Comment"></textarea>
   </div>
 </div>
</div>

<div class="form-group">
 <button type="submit" class="button button-contactForm btn_1 boxed-btn" >upload</button>
</div>
</form>
</div>
</div>


<%@ include file="../include/footer.jsp" %>


<!-- 유효성 검사  -->
<script src="${pageContext.request.contextPath }/resources/assets/js/requestBoard.js"></script>