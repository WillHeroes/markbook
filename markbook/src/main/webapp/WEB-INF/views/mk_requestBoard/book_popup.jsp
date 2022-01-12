<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/icon/favicon.png">

	<!-- CSS here -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/price_rangs.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/themify-icons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/slick.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">



<style>
hr {
    color: #222222;    /* IE */
    border-color: #222222;  /* 사파리 */
    background-color: #222222;   /* 크롬, 모질라 등, 기타 브라우저 */
    width: 2000px;
}
a{
color: black;

}
</style>



<meta charset="UTF-8">
<title>책 검색</title>



<div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget">
                            
                                <div class="form-group m-0">
                                    <div class="input-group">
                                        <input type="text" class="form-control"  id="query" name="Search" placeholder="검색어를 입력하시오.">
                               
                                            <button class="boxed-btn2" id="search">Search</button>
                                        </div>
                                    </div>
                               
                           
                        </aside>
                  
                    </div>

<!--     <input type="text" id="query" name="Search"> -->
<!--     <button id="search">검색</button> -->
 

<!--     <div id="here"></div> -->

<div class="progress-table-wrap">
<div id="count"></div>
												<div class="progress-table">
													<div class="table-head">
														<div class="serial" >표지</div>
														<div class="country">도서명</div>
														<div class="visit">저자</div>
														<div class="percentage">출판일</div>
													</div>

					
													<div class="table-row">
														<div id="newst"></div>
														검색결과가 없습니다.

													</div>

													</div>
												</div>




 <script type="text/javascript">

 
//  var title;
 var publisher;
 var price;
 var authors
 var ISBN;

	function data(title,ISBN,publisher,authors,price){	
			

				// 비치희망도서
				
		 window.opener.RForm.r_price.value = price;
		 window.opener.RForm.r_name.value = title;
		 window.opener.RForm.r_ISBN.value = ISBN;
		 window.opener.RForm.r_writer.value = authors;
		 window.opener.RForm.r_publisher.value = publisher;
		 window.opener.document.RForm.booook.value ="1";
		 
// 			  window.opener.document.getElementById('#r_price').value =price;
// 				opener.$('#r_price').attr(price);
// 				opener.$('#r_ISBN').attr("value", isbn);
// 				opener.$('#r_writer').attr("value", author);
// 				opener.$('#r_publisher').attr("value", pub);
// 				pub_date = pub_date.substring(0, 4);
// 				opener.$('#r_Publishing _date').attr("value", pub_date);
// 				opener.$('#r_price').attr("value", price);
// 		alert("되냐");
		
			window.close();

		}
		
 
 </script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
 
    <script>
        $(document).ready(function () {
            var pageNum = 1;
 
            $("#search").click(function () {
                $("#newst").html("");
 
                $.ajax({
                    method: "GET",
                    url: "https://dapi.kakao.com/v3/search/book?target=title",
                    data: { query: $("#query").val(), page: pageNum},
                    headers: {Authorization: "KakaoAK a3c8ac81507b278f06987e14e2f8c821"} // ########부분에 본인의 REST API 키를 넣어주세요.
 
                })
                .done(function (msg) {
                    console.log(msg);
                    
                      var num=msg.meta.total_count;
                        $("#count").append('<b>총</b>'+num+'<b>개</b>');
                        
                    for (var i = 0; i < 10; i++){
                    	var title =msg.documents[i].title;
                    	var publisher =msg.documents[i].publisher;
                    	var price =msg.documents[i].price;
                    	var authors =msg.documents[i].authors;
                    	var ISBN =msg.documents[i].isbn;
                    	var thumbnail=msg.documents[i].thumbnail;
                    	
//                     	$("div").append('<a href="\javascript:data('+"'"+title +"'"+','+"'"+ISBN +"'"+');\">'+title +"</a>");

                        $("#newst").append("<div class='serial'> <img src='" + thumbnail + "'  width='60px' height='90px'/></div><br>");
                    	$("#newst").append(' <div class="country"> <a href="\javascript:data('+"'"+title +"'"+','+"'"+ISBN +"'"+','+"'"+publisher +"'"+','+"'"+authors +"'"+','+"'"+price +"'"+');\">'+ title +'</a> </div>');

                        $("#newst").append('<div class="visit">'+publisher+'</div>');

                        $("#newst").append('<div class="percentage">'+authors+'</div>');

                        $("#newst").append('<hr>');

                    	
//                         $("#here").append("<tr>");
//                         $("#here").append("<td>");
//                         $("#here").append("<strong>요약:</strong> " + msg.documents[i].contents + "...<br>");
//                         $("#here").append("</td>");

//                         $("#here").append("</tr>");
                        

                        

                        
                    }
                });
            })
 
            $(window).scroll(function(){  
 
                if ( Math.ceil($(window).scrollTop()) + $(window).height() >= $(document).height() ){
                    pageNum++;
 
 
                    $.ajax({
                        method: "GET",
                        url: "https://dapi.kakao.com/v3/search/book?target=title",
                        data: { query: $("#query").val(),  page: pageNum},
                        headers: {Authorization: "KakaoAK a3c8ac81507b278f06987e14e2f8c821"} // ########부분에 본인의 REST API 키를 넣어주세요.
 
                    })
                    .done(function (msg) {
                        console.log(msg);
                        for (var i = 0; i < 10; i++){
                           	var title =msg.documents[i].title;
                        	var publisher =msg.documents[i].publisher;
                        	var price =msg.documents[i].price;
                        	var authors =msg.documents[i].authors;
                        	var ISBN =msg.documents[i].isbn;
                        	var thumbnail=msg.documents[i].thumbnail
                        	
                        	

                            $("#newst").append("<img src='" + thumbnail + "' /><br>");
                        	$("#newst").append('<div class="country"> <a href="\javascript:data('+"'"+title +"'"+','+"'"+ISBN +"'"+','+"'"+publisher +"'"+','+"'"+authors +"'"+','+"'"+price +"'"+');\" >'+ title +'</a> </div>');

                            $("#newst").append('<div class="visit">'+publisher+'</div>');

                            $("#newst").append('<div class="percentage">'+authors+'</div>');

                        }
                    });
 
                }
                
            });
        })
 
        
    </script>

</body>
</html>