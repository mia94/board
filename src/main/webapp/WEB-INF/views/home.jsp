<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script><title>Home</title>
</head>
<body>

<div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-4">
  	<h1>
		Hello Board 1  
	</h1>
	<form class="form-horizontal" action="user/loginPost" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="userid">ID</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="userid" placeholder="Enter id" name="userid">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="userpw">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="userpw" placeholder="Enter password" name="userpw">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">로그인</button>
        <button type="button" class="btn btn-default">회원가입</button>
      </div>
    </div>
  	</form>
	<button type="button" class="btn btn-primary">회원</button>
	<button type="button" class="btn btn-danger">게시글</button>
  </div>
  <div class="col-sm-4"></div>
</div>
	
	<script>
		$(function(){
			// 회원 목록보기로 이동
			$(".btn-primary").click(function(){
				location.href="${pageContext.request.contextPath}/customer/list";
			})
			// 회원 목록보기로 이동
			$(".btn-danger").click(function(){
				location.href="${pageContext.request.contextPath}/board/list";
			})
		})

	</script>
</body>
</html>
