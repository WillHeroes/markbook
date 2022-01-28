<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">


//팝업창에서 부모창을 다른페이지로 이동
window.opener.location.href="./request_list?pgnum="+${pgnum}+"&result="+${result};
self.close();


</script>


</body>
</html>