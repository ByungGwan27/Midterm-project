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
			
			<c:if test="${memberList.memberGrade == 5}">
					<li><a href="noticeAddForm.do" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>공지사항
								작성</span></a></li>
				</c:if>
			
		</ul>
	</nav>
	<!-- .nav-menu -->
	</header>
	
	
	