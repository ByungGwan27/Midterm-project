<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>


<section class="py-5">
	<div class="container px-4 px-lg-5 my-5">
		<h3>게시물 상세 페이지</h3>
		<div class="row gx-4 gx-lg-5 align-items-center">

			<c:forEach var="postmemberdetail" items="${postmemberdetail}">
				<table class="table">
					<tr>
						<th>제목</th>
						<td>${postmemberdetail.postTitle }</td>
						<th>작성자</th>
						<td>${postmemberdetail.memberNickName }</td>
					</tr>
					<tr>
					<tr>
						<th>내용</th>
						<td colspan="3">${postmemberdetail.postContent }</td>
					</tr>
				</table>
			</c:forEach>

		</div>
	</div>
</section>