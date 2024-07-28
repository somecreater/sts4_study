<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<title>this is boardlistpage</title>
</head>
<body>

	<div class="boardtable">
		<table id="boardtable">
			<c:forEach var=boardobject items="${boardli}">
				<tr>
					<td>${boardobject.boardnum}</td>
					<td>${boardobject.title}</td>
					<td>${boardobject.writer}</td>
					<td>${boardobject.registerday}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div>
		<button class="boardwritebtn">글쓰기</button>
	</div>
</body>
<script type="text/javascript">
$(document).ready(function(){
	
	
});
</script>
</html>