<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>

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
			
			<c:if test="${memberList.memberGrade == 5}">
					<li><a href="noticeAddForm.do" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>공지사항
								작성</span></a></li>
				</c:if>
			
		</ul>
	</nav>
	<!-- .nav-menu -->

</header>
<!-- End Header -->

<section class="py-5">
	<div class="container px-4 px-lg-5 my-5">
		<h3>공지사항 상세페이지</h3>
		<div class="row gx-4 gx-lg-5 align-items-center">
		
			<table class="table">

				<tr>
					<th>제목</th>
					<td>${noticeInfo.noticeTitle }</td>
					<th>작성자</th>
					<td>${noticeInfo.memberId }</td>
				</tr>

				<tr>
					<th>조회수</th>
					<td>${noticeInfo.noticeViews}</td>
					<th>작성일</th>
					<td>${noticeInfo.writeDate }</td>
				</tr>

				<tr>
					<th>작성내용</th>
					<td>${noticeInfo.noticeContent }</td>
				</tr>

				<tr>
					<td colspan="4" align="center">
					<a href="noticeModify.do?noticeId=${noticeInfo.noticeId}"><input type="button" value="수정"></a>
						<a href="noticeList.do"><input type="button" value="목록"></a></td>
				</tr>
			</table>

		</div>
	</div>
</section>
<!--<div class="center">
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

  -->

<!--  
<script>
	document.addEventListener('DOMContentLoaded', function() {

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