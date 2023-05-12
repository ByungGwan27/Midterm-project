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
		<table class="table">
			<form>
				<fieldset>
					<legend>공지사항 작성페이지</legend>

					<div class="form-group">

						<label for="exampleInputEmail1" class="form-label mt-4">Email
							address</label> <input type="email" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1" class="form-label mt-4">Password</label>
						<input type="password" class="form-control"
							id="exampleInputPassword1" placeholder="Password">
					</div>
					<div class="form-group">
						<label for="exampleSelect1" class="form-label mt-4">Example
							select</label> <select class="form-select" id="exampleSelect1">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>

					<div class="form-group">
						<label for="exampleTextarea" class="form-label mt-4">Example
							textarea</label>
						<textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
					</div>
					<div class="form-group">
						<label for="formFile" class="form-label mt-4">Default file
							input example</label> <input class="form-control" type="file"
							id="formFile">
					</div>

				</fieldset>
				<fieldset class="form-group">
					<legend class="mt-4">Checkboxes</legend>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> Default checkbox </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckChecked" checked=""> <label
							class="form-check-label" for="flexCheckChecked"> Checked
							checkbox </label>
					</div>
				</fieldset>

			</form>


<div class="form-group">
  <fieldset disabled="">
  <span class="badge bg-light">작성자</span>
    <input class="form-control" id="disabledInput" type="text" placeholder="관리자" disabled="">
  </fieldset>
</div>
<div class="form-group">
  <fieldset>
    <label class="form-label mt-4" for="readOnlyInput">Readonly input</label>
    <input class="form-control" id="readOnlyInput" type="text" placeholder="Readonly input here..." readonly="">
  </fieldset>
</div>
<div class="form-group has-success">
  <label class="form-label mt-4" for="inputValid">Valid input</label>
  <input type="text" value="correct value" class="form-control is-valid" id="inputValid">
  <div class="valid-feedback">Success! You've done it.</div>
</div>
<div class="form-group has-danger">
  <label class="form-label mt-4" for="inputInvalid">Invalid input</label>
  <input type="text" value="wrong value" class="form-control is-invalid" id="inputInvalid">
  <div class="invalid-feedback">Sorry, that username's taken. Try another?</div>
</div>
<div class="form-group">
  <label class="col-form-label col-form-label-lg mt-4" for="inputLarge">Large input</label>
  <input class="form-control form-control-lg" type="text" placeholder=".form-control-lg" id="inputLarge">
</div>
<div class="form-group">
  <label class="col-form-label mt-4" for="inputDefault">Default input</label>
  <input type="text" class="form-control" placeholder="Default input" id="inputDefault">
</div>
<div class="form-group">
  <label class="col-form-label col-form-label-sm mt-4" for="inputSmall">Small input</label>
  <input class="form-control form-control-sm" type="text" placeholder=".form-control-sm" id="inputSmall">
</div>
<div class="form-group">
  <label class="form-label mt-4">Input addons</label>
  <div class="form-group">
    <div class="input-group mb-3">
      <span class="input-group-text">$</span>
      <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
      <span class="input-group-text">.00</span>
    </div>
    <div class="input-group mb-3">
      <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
      <button class="btn btn-primary" type="button" id="button-addon2">Button</button>
    </div>
  </div>
</div>
<div class="form-group">
  <label class="form-label mt-4">Floating labels</label>
  <div class="form-floating mb-3">
    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
    <label for="floatingInput">Email address</label>
  </div>
  <div class="form-floating">
    <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
    <label for="floatingPassword">Password</label>
  </div>
</div>








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
				<td colspan="4" align="center"><input type="submit" value="등록">
					<input type="reset" value="취소"></td>
			</tr>
			</form>
		</table>
	</div>
</section>
