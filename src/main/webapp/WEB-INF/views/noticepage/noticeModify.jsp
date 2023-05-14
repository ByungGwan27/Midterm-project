<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>

<style>
a {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

*, ::before, ::after {
	box-sizing: inherit;
}

<
style>*, ::before, ::after {
	box-sizing: inherit;
}

body {
	text-size-adjust: none;
}

header.major {
	text-align: center;
	margin: 0px 0px 4rem;
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
<body class="is-preload">
	<article class="post featured">
		<header class="major">
			<h2>
				<a href="#">공지사항 수정페이지<br />
				</a>
			</h2>
		</header>
	</article>

	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<h3>공지사항 수정페이지</h3>
			<div class="row gx-4 gx-lg-5 align-items-center">

				<form action="modifyPage.do" method="post">
					<table class="table">
						<tr>
							<th>작성자</th>
							<td><input type="text" name="noticeId"
								></td>
						</tr>

						<tr>
							<th>제목</th>
							<td><input type="text" name="noticeTitle"
								></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea rows="3" cols="20" name="noticeContent"></textarea></td>
						</tr>

						<tr>
							<td colspan="2" align="center">
								<button type="submit">저장(수정)</button>
								<button type="button">삭제</button>
							</td>
						</tr>
					</table>
				</form>
				
			</div>
		</div>
	</section>

</body>