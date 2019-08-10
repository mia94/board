<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	#container{
		width:960px;
		margin: 50px auto;
	}
</style>
</head>
<body>
	<div id="container">
	<form action="/action_page.php">
	    <div class="form-group">
	      <label for="title">title:</label>
	      <input type="text" class="form-control" id="title" placeholder="Enter title" name="title">
	    </div>
	     <div class="form-group">
	      <label for="writer">writer:</label>
	      <input type="text" class="form-control" id="writer" placeholder="Enter writer" name="writer">
	    </div>
	    <div class="form-group">
	      <label for="content">content:</label>
	      <input type="text" class="form-control" id="content" placeholder="Enter content" name="content">
	    </div>
	    <button type="button" class="btn btn-default">cancel</button>
	    <button type="submit" class="btn btn-default">write</button>
  </form>
	</div>
</body>
</html>