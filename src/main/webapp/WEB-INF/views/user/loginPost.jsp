<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("아이디 혹은 비밀번호가 일치하지 않습니다.");
		location.href="${pageContext.request.contextPath}/";
	</script>
</body>
</html>