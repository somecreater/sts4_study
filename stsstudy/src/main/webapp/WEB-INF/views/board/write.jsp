<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/service.css">
<title>this is boardwrite</title>
</head>
<body>
	<button id="writebackbtn">뒤로가기</button>
	<div id="boardwriteobject" >
	<form action="/board/writeaction" method="post">
		<input id="_csrf" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<textarea id="title" name="title" rows="1" cols="80" placeholder="제목을 쓰시오" style="resize: none;"></textarea>
		<textarea id="content" name="content" rows="100" cols="80" placeholder="내용을 쓰시오" style="resize: none;"></textarea>
		<input id="writer" name="writer" type="text" placeholder="작성자 이름을 쓰시오"/>
		<input type="submit" id="boardwriteactbtn" value="작성완료"/>
	</form>
	</div>

</body>
<script type="text/javascript">
$(document).ready(function(){
	var backbutton=$("#writebackbtn");
	backbutton.on('click',function(){
		window.location="/main";
	});
	
	
});
</script>
</html>