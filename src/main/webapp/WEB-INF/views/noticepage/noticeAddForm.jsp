<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="//cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		CKEDITOR.replace('pdesc', {
			filebrowserUploadUrl : 'prodUpload.do'
		});

	})
</script>

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

			<!-- admin만 공지사항 작성 가능 -->
			<c:choose>
				<c:when test="${memberList.memberId == admin}">
					<li><a href="noticeAddForm.do" class="nav-link scrollto"><i
							class="bx bx-file-blank"></i> <span>공지사항 작성</span></a></li>
				</c:when>
				<c:otherwise>

				</c:otherwise>
			</c:choose>
			<li><a href="#portfolio" class="nav-link scrollto"><i
					class="bx bx-book-content"></i> <span>Portfolio</span></a></li>
			<li><a href="#contact" class="nav-link scrollto"><i
					class="bx bx-envelope"></i> <span>Contact</span></a></li>
		</ul>
	</nav>
	<!-- .nav-menu -->

</header>

<!-- End Header -->


<section class="py-5">
	<div class="container px-4 px-lg-5 my-5">
		<h3>공지사항 작성페이지</h3>
		<div class="row gx-4 gx-lg-5 align-items-center">
			<form action="addNotice.do" method="post"
				enctype="multipart/form-data">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="flexCheckChecked" checked=""> <label
						class="form-check-label" for="flexCheckChecked"> <font
						style="vertical-align: inherit;"> <font
							style="vertical-align: inherit;"> 중요공지사항 체크 </font>
					</font>
					</label>
				</div>
				<table class="table">
				<!--  
					<section>
						<form method="post" action="#">
							<div class="fields">
								<div class="field">
									<label for="name">Name</label> <input type="text" name="name"
										id="name" />
								</div>
								<div class="field">
									<label for="email">Email</label> <input type="text"
										name="email" id="email" />
								</div>
								<div class="field">
									<label for="message">Message</label>
									<textarea name="message" id="message" rows="3"></textarea>
								</div>
							</div>
							<ul class="actions">
								<li><input type="submit" value="Send Message" /></li>
							</ul>

						</form>
					</section>
					-->
					
					<tr>
						<th>작성자</th>
						<td><input type="text" name="writer" value="관리자" readonly></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td><input type="text" name="memberId" value="관리자" readonly></td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="noticeTitle"></td>

					</tr>
					<tr>
						<th>작성내용</th>
						<td colspan="3"><textarea name="noticeContent" cols="100"
								rows="10"></textarea></td>
					</tr>
 				
					<tr>
						<td colspan="4" align="center"><input type="submit"
							value="등록"> <input type="reset" value="취소"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</section>
