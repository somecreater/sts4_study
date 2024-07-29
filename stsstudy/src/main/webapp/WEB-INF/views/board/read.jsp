<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/service.css">
<title>this is boardread</title>
</head>
<body>

<input id="_csrf" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">

<button id="readbackbtn">뒤로가기</button>
<button id="updatebtn" data-num="${board.boardnum}">수정하기</button>
<button id="deletebtn" data-num="${board.boardnum}">삭제하기</button>

	<div id="boardreadobject" class="boardobject">
		<div class="boardtitle">
			<h6>제목</h6>
			<h2>${board.title}</h2>
		</div>
		<h6>내용</h6>
		<textarea rows="100" cols="80" style="resize: none" readonly="readonly">${board.content}</textarea>
		<h6>작성자</h6>
		<input type="text" value="${board.writer}" readonly="readonly">
		<h6>작성날짜</h6>
		<input type="text" value="${board.registerday}" readonly="readonly">
	</div>
	
</body>
<script type="text/javascript">
$(document).ready(function(){
	var backbutton=$("#readbackbtn");
	backbutton.on('click',function(){
		window.location="/main";
	});
	var updatebutton=$("#updatebtn");
	updatebutton.on('click',function(){
		var num=$(this).data("num");
		window.location="/board/update?num="+num;
	});
	var deletebutton=$("#deletebtn");
	deletebutton.on('click',function(){
		var brdnum=$(this).data("num");
		var csrfToken = $("#_csrf").val();
		//ajax로 게시판 삭제
		$.ajax({
			type:"POST",
			url:"/board/deleteaction",
			data:{num:brdnum},
			beforeSend: function(xhr){
				 xhr.setRequestHeader('X-CSRF-TOKEN', csrfToken);
			},
			success:function(result){
				alert(brdnum+"번 게시물이 정상적으로 삭제되었습니다");
				window.location="/main";
			},
			error:function(result){
				alert("삭제 실패");
			}
		});
	});
});
</script>
</html>