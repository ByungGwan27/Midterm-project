<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세보기</title>
</head>
<body>
	<h2>${board.title}</h2>
	<p>${board.content}</p>
	<hr>

	<!-- 댓글 목록 시작 -->
	<c:if test="${not empty commentList}">
		<h3>댓글 목록</h3>
		<table>
			<thead>
				<tr>
					<th>작성자</th>
					<th>내용</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="comment" items="${commentList}">
					<tr>
						<td>${comment.writer}</td>
						<td>${comment.content}</td>
						<td>${comment.regDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	<!-- 댓글 목록 끝 -->

	<hr>
	<!-- 댓글 작성 폼 시작 -->
	<h3>댓글 작성하기</h3>
	<form:form method="post" action="/comment/write">
		<table>
			<tr>
				<th><label for="writer">작성자:</label></th>
				<td><input type="text" id="writer" name="writer" required></td>
			</tr>
			<tr>
				<th><label for="content">내용:</label></th>
				<td><textarea id="content" name="content" required></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">작성하기</button></td>
			</tr>
			<tr>
				<td><input type="hidden" name="boardId" value="${board.id}"></td>
			</tr>
		</table>
	</form:form>
	<!-- 댓글 작성 폼 끝 -->

</body>
</html>