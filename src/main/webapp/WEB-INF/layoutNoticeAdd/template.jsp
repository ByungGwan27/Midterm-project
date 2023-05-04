<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

	<tiles:insertAttribute name="nav"></tiles:insertAttribute>
<h3>공지사항 등록페이지.</h3>
<tiles:insertAttribute name="body"></tiles:insertAttribute>
<form action="addNotice.do" method="post" enctype="multipart/form-data">
	<table class="table">
		<tr>
			<th>제목</th>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="3" cols="20" name="subject"></textarea></td>
		</tr>
		<tr>
			<th>작성자</th>
			
			<td><input type="text" name="writer" readonly value="${id }"></td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><input type="file" name="attach"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit">등록</button>
				<button type="reset">취소</button>
			</td>
		</tr>
<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</table>
</form>