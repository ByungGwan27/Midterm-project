<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.center {
	text-align: center;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>

<head>

<!-- Vendor CSS Files -->
<link href="cssNoticeAddForm/assets/assets/vendor/aos/aos.css"
	rel="stylesheet">
<link
	href="cssNoticeAddForm/assets/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="cssNoticeAddForm/assets/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="cssNoticeAddForm/assets/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="cssNoticeAddForm/assets/assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link
	href="cssNoticeAddForm/assets/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="cssNoticeAddForm/assets/assets/css/style.css"
	rel="stylesheet">

<!-- =======================================================
  * Template Name: MyResume
  * Updated: Mar 10 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/free-html-bootstrap-template-my-resume/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>


<!-- ======= Mobile nav toggle button ======= -->
<!-- <button type="button" class="mobile-nav-toggle d-xl-none"><i class="bi bi-list mobile-nav-toggle"></i></button> -->
<i class="bi bi-list mobile-nav-toggle d-lg-none"></i>
<!-- ======= Header ======= -->
<header id="header" class="d-flex flex-column justify-content-center">

	<nav id="navbar" class="navbar nav-menu">
		<ul>
			<li><a href="noticeList.do" class="nav-link scrollto active"><i
					class="bx bx-home"></i> <span>공지사항 홈</span></a></li>
			<li><a href="noticeDetail.do" class="nav-link scrollto"><i
					class="bx bx-server"></i> <span>공지사항 상세페이지</span></a></li>
			<li><a href="noticeAddForm.do" class="nav-link scrollto"><i
					class="bx bx-file-blank"></i> <span>공지사항 작성</span></a></li>
			<li><a href="#portfolio" class="nav-link scrollto"><i
					class="bx bx-book-content"></i> <span>Portfolio</span></a></li>
			<li><a href="#contact" class="nav-link scrollto"><i
					class="bx bx-envelope"></i> <span>Contact</span></a></li>
		</ul>
	</nav>
	<!-- .nav-menu -->

</header>
<!-- End Header -->


<c:set var="no" value="0"></c:set>

<section class="py-5">

	<div class="container px-4 px-lg-5 my-5">
		<h2>공지사항 홈</h2>
		<div class="row gx-4 gx-lg-5 align-items-center">
			<form action="noticeAdd.do" method="POST">
				<table class="table">

					<thead>
						<tr>
							<th>순번</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성날짜</th>
							<th>조회수</th>

						</tr>
					</thead>
					<c:forEach var="notice" items="${list }">
						<tr>
							<td><c:out value="${no=no+1 }"></c:out></td>
							<!-- <td><a href="getNotice.do?page=${pageInfo.pageNum}&nid=${notice.noticeId }">${notice.noticeId }</a></td> -->
							<td><a
								href="noticeDetail.do?noticeId=${notice.noticeId}">${notice.noticeTitle }</a></td>
							<td>${notice.memberId }</td>
							<td>${notice.writeDate }</td>
							<td>${notice.noticeViews }</td>	
							<td colspan="2" align="center">
									<a href="noticeModify.do?noticeId=${notice.noticeId}"><input type="button" value="수정"></a>
								<input type="reset" value="취소"></td>
							
						</tr>
					</c:forEach>
				</table>

				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<div class="container-fluid">

						<form class="d-flex">
							<input class="form-control me-sm-2" type="search"
								placeholder="Search">
							<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
						</form>
					</div>
				</nav>

				<div class="center">
					<div class="pagination">
						<c:if test="${pageInfo.prev }">
							<a href="noticeList.do?page=${pageInfo.startPage-1 }">Previous</a>
						</c:if>
						<c:forEach var="i" begin="${pageInfo.startPage }"
							end="${pageInfo.endPage }">
							<a class="${i == pageInfo.pageNum ? 'active' : '' }"
								href="noticeList.do?page=${i }">${i } </a>
						</c:forEach>
						<c:if test="${pageInfo.next }">
							<a href="noticeList.do?page=${pageInfo.endPage+1 }">Next</a>
						</c:if>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>


<!--<script>
document.addEventListener('DOMContentLoaded', function(){
	
	let res1 = document.querySelectorAll("table tbody tr");
	console.log(res1)
	res1.forEach(function(res1) {
		res1.addEventListener("dblclick", function() {
			location.href = 'noticeDetail.do?id='
					+ this.children[1].innerText;
		})

	})
})
</script>
          -->

