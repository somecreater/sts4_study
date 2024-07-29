<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/service.css">
<title>this is boardlistpage</title>
</head>
<body>

	<div class="boardtable">
		<table id="boardtable">
		<thead>
			<tr>
				<th>게시물 번호</th>
				<th>게시물 제목</th>
				<th>게시물 작성자</th>
				<th>게시물 작성 날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="boardobject" items="${boardli}">
				<tr>
					<td>${boardobject.boardnum}</td>
					<td><a href="/board/read?num=${boardobject.boardnum}">${boardobject.title}</a></td>
					<td>${boardobject.writer}</td>
					<td>${boardobject.registerday}</td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
	<div>
		<button class="boardwritebtn">글쓰기</button>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function(){
	var writebutton=$(".boardwritebtn");
	writebutton.on('click',function(){
		alert("글쓰기를 시작합니다.");
		window.location="/board/write";
	})
	
});
</script>
</html>