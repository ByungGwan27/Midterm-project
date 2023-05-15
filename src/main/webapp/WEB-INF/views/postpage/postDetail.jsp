<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<%-- <tiles:insertDefinition name="postpage" />
<tiles:putAttribute name="title" value="게시물 상세 페이지" />
 --%>
<section class="py-5">
	<div class="container px-4 px-lg-5 my-5">
		<h3>게시물 상세 페이지</h3>
		<div class="row gx-4 gx-lg-5 align-items-center">
		
			<c:forEach var="post" items="${postDetail}">
				<table class="table">
					<tr>
						<th>제목</th>
						<td>${post.postTitle }</td>
						<th>작성자</th>
						<td>${post.memberId }</td>
					</tr>
					<tr>
						<th>조회수</th>
						<td>${post.postViews}</td>
						
					<tr>
						<th>내용</th>
						<td colspan="3">${post.postContent }</td>
					</tr>
				</table>
			</c:forEach>

		</div>
	</div>
</section>