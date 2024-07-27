<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<title>this is boardwrite</title>
</head>
<body>
	<button id="writebackbtn">뒤로가기</button>
	<div class="boardwriteobject">
	<form action="/board/writeaction" method="post">
	
		<textarea id="title" name="title" rows="1" cols="80" placeholder="제목을 쓰시오"></textarea>
		<textarea id="content" name="content" rows="100" cols="80" placeholder="내용을 쓰시오"></textarea>
		<input id="writer" name="writer" type="text" placeholder="작성자 이름을 쓰시오"/>
		<input type="submit" id="boardwriteactbtn">작성완료</input>
	</form>
	</div>

</body>
<script type="text/javascript">
$(document).ready(function(){
	
	
});
</script>
</html>