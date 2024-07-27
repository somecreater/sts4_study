<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<title>this is boardread</title>
</head>
<body>
<button id="readbackbtn">뒤로가기</button>
<button id="updatebtn">수정하기</button>
<button id="deltebtn">삭제하기</button>

	<div class="boardobject">
		<div class="boardtitle">
			<h6>제목</h6>
			<h2>${board.title}</h2>
		</div>
		<h6>내용</h6>
		<textarea rows="100" cols="80" style="resize: none" readonly="readonly">${board.content}</textarea>
		<h6>작성자</h6>
		<input type="text" value="${board.wirter}" readonly="readonly">
		<h6>작성날짜</h6>
		<input type="text" value="${board.registerday}" readonly="readonly">
	</div>
	
</body>
<script type="text/javascript">
$(document).ready(function(){
	
	
});
</script>
</html>