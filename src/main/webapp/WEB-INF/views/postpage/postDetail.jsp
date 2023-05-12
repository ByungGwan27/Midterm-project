<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<c:forEach var="postList" items="${postList}" begin="1" end="1">
<section class="py-5">
<div class="container px-5 my-5">
	<div class="row gx-5">
		<div class="col-lg-3">
			<div class="d-flex align-items-center mt-lg-5 mb-4">
				<img class="img-fluid rounded-circle"
					src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
				<div class="ms-3">
					<div class="fw-bold">${postList.memberName}</div>
			<div class="text-muted">News, Business</div>
		</div>
	</div>
</div>
			<div class="col-lg-9">
				<!-- Post content-->
	<!-- Post header-->
<header class="mb-4">
	<!-- Post title-->
	<h1 class="fw-bolder mb-1">${postList.postTitle}</h1>
	<!-- Post meta content-->
	<div class="text-muted fst-italic mb-2">${postList.writeDate}</div>

</header>
<!-- Preview image figure-->
<figure class="mb-4">
	<img class="img-fluid rounded"
		src="https://dummyimage.com/900x400/ced4da/6c757d.jpg" alt="..." />
</figure>
<!-- Post content-->
<section class="mb-5">
	<p class="fs-5 mb-4">${postList.postContent}</p>

	</section>
<!-- Comments section-->

<!-- 댓글정보. -->
<table class="table">
	<thead>
		<tr>
			<th>댓글번호</th>
			<th>글내용</th>
			<th>작성자</th>
			<th>작성날짜</th>
		</tr>
	</thead>
	<tbody id="tlist">
	</tbody>
</table>

<table style="display: none;">
	<tbody>
		<tr class="template">
			<td>10</td>
			<td><input type="text" class="reply"></td>
			<td>user01</td>
			<td><button>수정</button>
		</tr>
	</tbody>
</table>

<!-- 댓글등록. -->
<div id="content">
	<input type="text" id="reply"> <span>${id }</span>
	<button type="button" id="addBtn">댓글등록</button>
</div>

<section>
	<div class="card bg-light">
		<div class="card-body">
			<!-- Comment form-->
		<form class="mb-4">
			<textarea class="form-control" rows="3"
				placeholder="Join the discussion and leave a comment!"></textarea>
		</form>
		<!-- Comment with nested comments-->
		<div class="d-flex mb-4">
			<!-- Parent comment-->
			<div class="flex-shrink-0">
				<img class="rounded-circle"
					src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
			</div>
			<div class="ms-3">
				<div class="fw-bold">댓글 작성자</div>
				댓글내용
				<!-- Child comment 1-->
				<div class="d-flex mt-4">
					<div class="flex-shrink-0">
						<img class="rounded-circle"
							src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
							alt="..." />
					</div>
					<div class="ms-3">
						<div class="fw-bold">답글 작성자</div>
						답글 내용
					</div>
				</div>
				<!-- Child comment 2-->
				<div class="d-flex mt-4">
					<div class="flex-shrink-0">
						<img class="rounded-circle"
							src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
							alt="..." />
					</div>
					<div class="ms-3">
						<div class="fw-bold">Commenter Name</div>
						When you put money directly to a problem, it makes a good
						headline.
					</div>
				</div>
			</div>
		</div>
		<!-- Single comment-->
		<div class="d-flex">
			<div class="flex-shrink-0">
				<img class="rounded-circle"
					src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
			</div>
			<div class="ms-3">
				<div class="fw-bold">Commenter Name</div>
				When I look at the universe and all the ways the universe wants
				to kill us, I find it hard to reconcile that with statements of
				beneficence.
			</div>
		</div>
	</div>
</div>
			</section>
		</div>
	</div>
</div>
</section>
</c:forEach>