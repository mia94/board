<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
	.container{
		width:960px;
		margin: 20px auto;
	}
</style>
</head>
<body>
	<div class="container">
	  <h2>Customer</h2>            
	  <table class="table table-hover">
	    <thead>
	      <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>글쓴이</th>
	        <th>게시날짜</th>
	      </tr>
	    </thead>
	    <tbody>
	    	<c:forEach var="items" items="${list }">
	    	
	    		<tr>
			        <td>${items.bno }</td>
			        <td>${items.title }</td>
			        <td>${items.writer.userid }</td>
			        <td>${items.regdate }</td>
	      		</tr>
	    		
	    	</c:forEach>
	    </tbody>
	   
	  </table>
	  <button type="button" class="btn btn-primary">글쓰기</button>
	</div>
	
	<script>
		$(function(){
			$(".btn-primary").click(function(){
				location.href="${pageContext.request.contextPath}/board/register";
			})
		})
	</script>
	
</body>
</html>
















