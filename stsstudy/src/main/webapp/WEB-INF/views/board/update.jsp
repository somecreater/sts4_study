<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<title>this is boardupdate</title>
</head>
<body>
	<button id="updatebackbtn">뒤로가기</button>

	<div class="boardobject">
		<div class="boardtitle">
			<h6>제목</h6>
			<textarea rows="1" cols="80">${board.title}</textarea>
		</div>
		<h6>내용</h6>
		<textarea rows="100" cols="80" style="resize: none">${board.content}</textarea>
		<h6>작성자</h6>
		<input type="text" value="${board.wirter}" readonly="readonly">
		<h6>작성날짜</h6>
		<input type="text" value="${board.registerday}" readonly="readonly">
		<button id="updateactionbtn">수정완료</button>
	</div>

</body>
<script type="text/javascript">
$(document).ready(function(){
	
	
});
</script>
</html>